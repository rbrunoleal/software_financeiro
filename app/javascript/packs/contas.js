import Vue from 'vue/dist/vue.esm'
import TurbolinksAdapter from 'vue-turbolinks'
import VueResource from 'vue-resource'
import axios from 'axios'
import Toastr from 'vue-toastr';
import BootstrapVue from 'bootstrap-vue'
import { URL } from './env';
import vSelect from 'vue-select';
import JsPdf from 'jspdf';
import jsAutoTable from 'jspdf-autotable';


Vue.use(VueResource);
Vue.use(TurbolinksAdapter);
Vue.component('vue-toastr', Toastr);
Vue.component('v-select', vSelect)

Vue.use(Toastr, {
  defaultTimeout: 3000,
  defaultProgressBar: false,
  defaultPosition: "toast-top-right",
  closeButton: true

});
Vue.use(BootstrapVue);

axios.defaults.headers.common['X-CSRF-Token'] = document.querySelector('meta[name="csrf-token"]').getAttribute('content');
const contasIndex = new Vue({
  el: document.getElementById('contasApp'),
  data: {
    loading: true,
    create: false,
    clickedConta: {banco: {}},
    contas: [{banco: {}}],
    contasfiltro: [],
    pickedConta: {},
    showModal: false,
    allSelected: false,
    show: false,
    contaNumero: '',
    contaBanco: '',
    agenciaNumero: '',
     contaDescricao: '',
    contaNumeroPDF: '',
    contaDescricaoPDF: '',
    contaBancoPDF: '',
    agenciaNumeroPDF: '',
    bancoId: '',
    bancos: [],
    contasPDF: [],
    currentPage: 1,
    total: 0
  },
  mounted () {
    this.searchContas();
    axios.get(`${URL}/bancos/all.json`).then(response => {this.bancos = response.data});
  },
  methods: {
    createPDF: function (){
      let filter = this.contaNumeroPDF? `contaNumero=${this.contaNumeroPDF}`:'';
      filter = this.contaDescricaoPDF? `contaDescricao=${this.contaDescricaoPDF}`:'';
      filter += this.agenciaNumeroPDF? `&agenciaNumero=${this.agenciaNumeroPDF}`:'';
      filter += this.contaBancoPDF? `&bancoId=${this.contaBancoPDF}`:'';
      filter += `&per_page=${this.total}`;
      this.isLoading = true;
      axios
        .get(`${URL}/contas.json?${filter}`)
        .then(response => {
          this.contasPDF = response.data.contas;
        })
        .catch(error => {
          this.errored = true;
          this.loading = false;
      })
      .finally(() => this.mountPDF())
    },
    mountPDF: function (){
     this.loading = false;
     
      const Columns = [
          {title: "Descrição", dataKey: "descricao"},
          {title: "Conta", dataKey: "conta"},
          {title: "Banco", dataKey: "banco"},
          {title: "Agência", dataKey: "agencia"}
      ];
      
      const Rows = this.contasPDF.map(x =>
        ({  conta: x.conta,
            banco: x.banco.descricao,
            agencia: x.agencia,
            descricao: x.descricao
        })
      );
      
      if(this.contasPDF.length > 0){
        const pdfName = 'Contas';
        const pdfsize='a4';
        const doc = new JsPdf('p', 'pt', pdfsize);
        
        let SubtitleFiltro = '';
        let filter = 'Filtros: ';
        filter += this.contaDescricaoPDF? `[Descrição: ${this.contaDescricaoPDF}]`:'';
        filter += this.contaNumeroPDF? `[Número: ${this.contaNumeroPDF}]`:'';
        filter += this.agenciaNumeroPDF? `[Agência: ${this.agenciaNumeroPDF}]`:'';
        
        let valueBanco = this.contaBancoPDF;
        if(valueBanco != ''){
          var lBanco = this.bancos.find(function(element) { 
            return element.id == valueBanco; 
          }); 
          filter += lBanco? `[Banco: ${lBanco.descricao}]`:'';
        }
        SubtitleFiltro += filter !== 'Filtros: ' ? filter : '';
        const header = function(data) {
          doc.setFontSize(18);
          doc.setTextColor(40);
          doc.setFontStyle('normal');
          doc.text("Relatório - Contas", data.settings.margin.left, 30);

          let SubtitleData = '';
          const now = new Date().toLocaleString();
          SubtitleData += `Data: ${now}`; 
          
          doc.setFontSize(12);
          doc.setTextColor(40);
          doc.setFontStyle('normal');
          doc.text(SubtitleData, data.settings.margin.left, 50);
          doc.text(SubtitleFiltro, data.settings.margin.left, 70);
        };
        
        const Options = {
          didDrawPage: header,
          margin: {
            top: 80
          },
          theme: 'grid', 
          headStyles: {
            fillColor: [0, 0, 0],
            textColor: [255, 255, 255]
          },
          styles: {
            overflow: 'linebreak',
            cellWidth: 88
          },
          columnStyles: {
              0: {cellWidth: 200}
          }
        };
        
        if(Rows.length > 0){
          doc.autoTable(Columns, Rows, Options);
          const pageCount = doc.internal.getNumberOfPages();
          for(let i = 0; i < pageCount; i++) {
            doc.setPage(i); 
            doc.setFontSize(12);
            doc.text(560,15, doc.internal.getCurrentPageInfo().pageNumber + "/" + pageCount);
          }
          doc.save(pdfName + ".pdf");
        }
      }
      else{
         this.$toastr.w("Nenhum Registro.");
      }
    },
    changePage: function(page) {
      if(page !== this.currentPage){
        this.currentPage = page;
        this.searchContas();
      }
    },
    mountCreateForm: function () {
      this.$refs.formContaModal.show();
      this.create = true;
      this.clickedConta = {banco: {}};
    },
    mountDeleteForm: function (conta) {
      this.$refs.deleteContaModal.show();
      this.clickedConta = conta;
    },
    mountEditForm: function (conta) {
      this.$refs.formContaModal.show();
      this.create = false;
      this.clickedConta = {... conta};
    },
    deleteConta: function (id){
      axios
        .delete(`${URL}/contas/${id}.json`)
        .then(response => {
          this.searchContas();
          this.$toastr.s("Registro apagado.");
          this.$refs.deleteContaModal.hide();
        })
        .catch(error => {
          if (error.response.status === 422){
            error.response.data.errors.map(error => this.$toastr.e(error));
          }
          else{
             this.$toastr.e("Não foi possível excluir");
          }
        })
        .finally(() => this.loading = false)
    },
    searchContas: function(){
      this.loading = true;
      this.clickedConta = {banco: {}};
      
      this.contaDescricaoPDF = this.contaDescricao;
      this.contaNumeroPDF = this.contaNumero;
      this.contaBancoPDF = this.bancoId;
      this.agenciaNumeroPDF = this.agenciaNumero;
      
      let filter = this.contaNumero? `contaNumero=${this.contaNumero}`:'';
      filter += this.agenciaNumero? `&agenciaNumero=${this.agenciaNumero}`:'';
      filter += this.bancoId? `&bancoId=${this.bancoId}`:'';
      filter += this.contaDescricao? `&contaDescricao=${this.contaDescricao}`:'';
      filter += `&page=${this.currentPage}`;
      axios
          .get(`${URL}/contas.json?${filter}`)
          .then(response => {
            this.contas = response.data.contas;
            this.total = response.data.total;
          })
          .catch(error => {
            this.errored = true
          })
          .finally(() => this.loading = false)
    },
    createConta: function(conta){
      axios
        .post(`${URL}/contas.json`, {conta})
        .then(response => {
          this.$refs.formContaModal.hide();
          this.searchContas();
          this.$toastr.s("Registro criado.");
        })
        .catch(error => {
          if (error.response.status === 422){
            error.response.data.errors.map(error => this.$toastr.e(error));
          }
          else{
            this.$toastr.e("Não foi possível salvar as alterações");
          }
        })
        .finally(() => this.loading = false)
    },
    updateConta: function(conta){
      this.loading = true;
      axios
        .put(`${URL}/contas/${conta.id}.json`, {conta})
        .then(response => {
          this.$refs.formContaModal.hide();
          this.searchContas();
          this.$toastr.s("Registro atualizado.");
        })
        .catch(error => {
          if (error.response.status === 422){
            error.response.data.errors.map(error => this.$toastr.e(error));
          }
          else{
            this.$toastr.e("Não foi possível atualizar as informações");
          }
        })
        .finally(() => this.loading = false)
    },
    selectAll: function() {
      this.allSelected ? this.contas.map( conta  => conta.selected = false) : this.contas.map( conta  => conta.selected = true);
    },
    select: function() {
      this.allSelected = false;
    },
    closeModal(){
      this.$refs.deleteContaModal.hide();
      this.$refs.formContaModal.hide()
    }
  }
});

const contaShow = new Vue({
  el: document.getElementById('contaShowApp'),
  data: {
    loading: true,
    create: false,
    clickedMovimento: {pessoa: {}, conta: {}, nota: {}},
    conta: { movimentos: []},
    showModal: false,
    allSelected: false,
    show: false,
    pessoas: [],
    contas: {},
    nota: false,
    id: window.location.pathname.split("/")[2]
  },
  mounted(){
    this.searchConta(this.id);
    axios.get(`${URL}/pessoas/all.json`).then(response => {this.pessoas = response.data});
  },
  methods: {
    mountCreateForm: function () {
      this.$refs.formMovimentoModal.show();
      this.create = true;
      this.nota = false;
      this.clickedMovimento = {pessoa: {}, conta: {}, nota: {}};
    },
    mountDeleteForm: function (movimento) {
      this.$refs.deleteMovimentoModal.show();
      this.clickedMovimento = movimento;
    },
    mountEditForm: function (movimento) {
      this.$refs.formMovimentoModal.show();
      this.create = false;
      this.nota = false;
      if(!movimento.nota)
        movimento.nota = {};
      this.clickedMovimento = {... movimento};
    },
    deleteMovimento: function (id){
      axios
          .delete(`${URL}/movimentos/${id}.json`)
          .then(response => {
            this.searchConta(this.id);
            this.$toastr.s("Registro apagado.");
            this.$refs.deleteMovimentoModal.hide();
          })
          .catch(error => {
            this.$toastr.e("Não foi possível excluir")
          })
          .finally(() => this.loading = false)
    },
    searchConta: function(id){
      this.loading = true;
      this.clickedMovimento = {pessoa: {}, conta: {}, nota: {}};
      axios
          .get(`${URL}/contas/${id}.json`)
          .then(response => {
            this.conta = response.data
          })
          .catch(error => {
            this.errored = true
          })
          .finally(() => this.loading = false)
    },
    createMovimento: function(movimento){
      movimento.conta_id = this.id;
      movimento.pessoa_id = movimento.favorecido.id;
      movimento.nota_attributes = movimento.nota;
      this.loading = true;
      axios
          .post(`${URL}/movimentos.json`, {
            movimento
          })
          .then(response => {
            this.$refs.formMovimentoModal.hide();
            this.searchConta(this.id);
            this.$toastr.s("Registro criado.");
          })
          .catch(error => {
            this.$toastr.e("Não foi possível adicionar.");
          })
          .finally(() => this.loading = false);
    },
    updateMovimento: function(movimento){
      this.loading = true;
      movimento.nota_attributes = movimento.nota;
      movimento.pessoa_id = movimento.favorecido.id;
      axios.put(`${URL}/movimentos/${movimento.id}.json`, {
        movimento
      })
          .then(response => {
            this.$refs.formMovimentoModal.hide();
            this.searchConta(this.id);
            this.$toastr.s("Registro atualizado.");

          })
          .catch(error => {
            this.$toastr.e("Não foi possível adicionar.");
          })
          .finally(() => this.loading = false)
    },
    selectAll: function() {
      this.allSelected ? this.conta.movimentos.map( movimento  => movimento.selected = false) : this.conta.movimentos.map( movimento  => movimento.selected = true);
    },
    select: function() {
      this.allSelected = false;
    },
    closeModal(){
      this.$refs.deleteMovimentoModal.hide();
      this.$refs.formMovimentoModal.hide()
    },
    alteraTipo: function() {
      if (this.clickedMovimento.valor){
        this.clickedMovimento.valor *= -1;
      }
    }
  }
});