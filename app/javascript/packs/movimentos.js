import Vue from 'vue/dist/vue.esm'
import TurbolinksAdapter from 'vue-turbolinks'
import VueResource from 'vue-resource'
import axios from 'axios'
import Toastr from 'vue-toastr';
import BootstrapVue from 'bootstrap-vue';
import { URL } from './env';
import vSelect from 'vue-select'
import JsPdf from 'jspdf'
import jsAutoTable from 'jspdf-autotable'

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
const movimentosIndex = new Vue({
  el: document.getElementById('movimentosApp'),
  data: {
    loading: true,
    create: false,
    clickedMovimento: {pessoa: {}, conta: {}, nota: {}},
    movimentos: [{nota: {}}],
    movimentosPDF: [],
    showModal: false,
    allSelected: false,
    show: false,
    pessoas: [{id:'', nome:''}],
    contas: {},
    nota: false,
    total: 0,
    currentPage: 1,
    valor: '',
    pessoaNome: '',
    dataCompetenciaInicio: '',
    dataCompetenciaFinal: '',
    valorPDF: '',
    pessoaNomePDF: '',
    dataCompetenciaInicioPDF: '',
    dataCompetenciaFinalPDF: '',
    tipoMovimento: '',
    tipoMovimentoPDF: '',
    tipos: [{descricao: 'Despesa', value:'despesa'},{descricao: 'Receita',value: 'receita'}]
  },
  mounted(){
    this.searchMovimentos();
    axios.get(`${URL}/contas/all.json`).then(response => {this.contas = response.data});
    axios.get(`${URL}/pessoas/all.json`).then(response => {this.pessoas = response.data});
  },
  methods: {
    createPDF: function (){
      let filter = this.valorPDF ? `valor=${this.valorPDF}`:'';
      filter += this.dataCompetenciaInicioPDF? `&dataCompetenciaInicio=${this.dataCompetenciaInicioPDF}`:'';
      filter += this.dataCompetenciaFinalPDF? `&dataCompetenciaFinal=${this.dataCompetenciaFinalPDF}`:'';
      filter += this.pessoaNomePDF? `&pessoa=${this.pessoaNomePDF}`:'';
      filter += this.tipoMovimento? `&${this.tipoMovimento}=1`:'';
      filter += `&per_page=${this.total}`;
      this.isLoading = true;
      axios
        .get(`${URL}/movimentos.json?${filter}`)
        .then(response => {
          this.movimentosPDF = response.data.movimentos;
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
          {title: "Data Comp.", dataKey: "dataCompetencia"},
          {title: "Data Venc.", dataKey: "dataVencimento"},
          {title: "Fav/Sac", dataKey: "favorecido"},
          {title: "Descrição", dataKey: "descricao"},
          {title: "Conta", dataKey: "conta"},
          {title: "Valor", dataKey: "valor"},
          {title: "Nota Fiscal", dataKey: "nota"},
      ];
      
      const Rows = this.movimentosPDF.map(x =>
        ({  dataCompetencia: new Date(x.data_competencia + "T00:00:00").toLocaleDateString(),
            dataVencimento: new Date(x.data_vencimento + "T00:00:00").toLocaleDateString(),
            favorecido: x.favorecido,
            descricao: x.descricao,
            valor: x.valor,
            conta: x.contabancaria,
            nota: x.nota
        })
      );
      
      if(this.movimentosPDF.length > 0){
        const pdfName = 'Movimentos';
        const pdfsize='a4';
        const doc = new JsPdf('p', 'pt', pdfsize);

        let SubtitleFiltro = '';
        let filter = 'Filtros: ';
        filter += this.dataCompetenciaInicioPDF? `[Data Início: ${new Date(this.dataCompetenciaInicioPDF + "T00:00:00").toLocaleDateString()}]`:'';
        filter += this.dataCompetenciaFinalPDF? `[Data Final: ${new Date(this.dataCompetenciaFinalPDF + "T00:00:00").toLocaleDateString()}]`:'';
        filter += this.pessoaNomePDF? `[Fav/Sac: ${this.pessoaNomePDF}]`:'';
        filter += this.valorPDF ? `[Valor: ${this.valorPDF}]`:'';
        let valueTipo = this.tipoMovimentoPDF;
        if(valueTipo != ''){
          var lTipo = this.tipos.find(function(element) { 
            return element.value == valueTipo; 
          }); 
          filter += lTipo? `[Tipo: ${lTipo.descricao}]`:'';
        }
        SubtitleFiltro += filter !== 'Filtros: ' ? filter : '';

        const header = function(data) {
          doc.setFontSize(18);
          doc.setTextColor(40);
          doc.setFontStyle('normal');
          doc.text("Relatório - Movimentos", data.settings.margin.left, 30);

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
            cellWidth: 60
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
        this.searchMovimentos();
      }
    },
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
    mountShowModal: function (movimento){
      this.clickedMovimento = movimento;
      this.$refs.showMovimentoModal.show();
    },
    mountMultipleDeleteForm: function () {
      this.$refs.deleteMovimentoModal.show();
      this.selectedMovimentos = [];
      this.movimentos.map(movimento => {
        if (movimento.selected)
          return this.selectedMovimentos.push(movimento.id)
      });

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
          this.searchMovimentos();
          this.$toastr.s("Registro apagado.");
          this.$refs.deleteMovimentoModal.hide();
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
    searchMovimentos: function(){
      let filter = this.valor ? `valor=${this.valor}`:'';
      filter += this.dataCompetenciaInicio? `&dataCompetenciaInicio=${this.dataCompetenciaInicio}`:'';
      filter += this.dataCompetenciaFinal? `&dataCompetenciaFinal=${this.dataCompetenciaFinal}`:'';
      filter += this.pessoaNome? `&pessoa=${this.pessoaNome}`:'';
      filter += this.tipoMovimento? `&${this.tipoMovimento}=1`:'';
      
      filter += `&page=${this.currentPage}`;
      
      this.valorPDF = this.valor;
      this.pessoaNomePDF = this.pessoaNome;
      this.dataCompetenciaFinalPDF = this.dataCompetenciaFinal;
      this.dataCompetenciaInicioPDF = this.dataCompetenciaInicio;
      this.tipoMovimentoPDF = this.tipoMovimento;
      
      this.loading = true;
      this.clickedMovimento = {pessoa: {}, conta: {}, nota: {}};
      axios
        .get(`${URL}/movimentos.json?${filter}`)
        .then(response => {
          this.movimentos = response.data.movimentos;
          this.total = response.data.total
        })
        .catch(error => {
          this.errored = true
        })
        .finally(() => this.loading = false)
    },
    createMovimento: function(movimento){
      movimento = {... movimento, nota_attributes: movimento.nota, pessoa_id: movimento.favorecido.id};
      this.loading = true;
      axios.post(`${URL}/movimentos.json`, {
        movimento
      })
        .then(response => {
          this.$refs.formMovimentoModal.hide();
          this.searchMovimentos();
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
    updateMovimento: function(movimento){
      this.loading = true;

      movimento = {... movimento, pessoa_id: movimento.favorecido.id, nota_attributes: movimento.nota};

      axios.put(`${URL}/movimentos/${movimento.id}.json`, {
        movimento
      })
        .then(response => {
          this.$refs.formMovimentoModal.hide();
          this.searchMovimentos();
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
      this.allSelected ? this.movimentos.map( movimento  => movimento.selected = false) : this.movimentos.map( movimento  => movimento.selected = true);
    },
    select: function() {
      this.allSelected = false;
    },
    closeModal: function() {
      this.$refs.deleteMovimentoModal.hide();
      this.$refs.formMovimentoModal.hide();
      this.$refs.showMovimentoModal.hide();
    },
    alteraTipo: function() {
      if (this.clickedMovimento.valor){
        this.clickedMovimento.valor *= -1;
      }
    }
  }
});
