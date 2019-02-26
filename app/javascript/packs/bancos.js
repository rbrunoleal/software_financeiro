import Vue from 'vue/dist/vue.esm'
import TurbolinksAdapter from 'vue-turbolinks'
import VueResource from 'vue-resource'
import axios from 'axios'
import Toastr from 'vue-toastr';
import BootstrapVue from 'bootstrap-vue'
import { URL } from './env';
import jsPDF from 'jspdf'
import jsAutoTable from 'jspdf-autotable'

Vue.use(VueResource);
Vue.use(TurbolinksAdapter);
Vue.component('vue-toastr', Toastr);

Vue.use(Toastr, {
  defaultTimeout: 3000,
  defaultProgressBar: false,
  defaultPosition: "toast-top-right",
  closeButton: true
});

Vue.use(BootstrapVue);

axios.defaults.headers.common['X-CSRF-Token'] = document.querySelector('meta[name="csrf-token"]').getAttribute('content')
const bancosIndex = new Vue({
  el: document.getElementById('bancosApp'),
  data: {
    loading: true,
    create: false,
    clickedBanco: {},
    bancos: [],
    showModal: false,
    allSelected: false,
    codigo: '',
    descricao: '',
    bancosPDF: [],
    codigoPDF: '',
    descricaoPDF: '',
    total: 0,
    currentPage: 1
  },
  mounted(){
    this.searchBancos();
  },
  methods: {
    changePage: function(page) {
      if(page !== this.currentPage){
        this.currentPage = page;
        this.searchBancos();
      }
    },
    createPDF: function (){
      let filter = this.codigo? `codigo=${this.codigoPDF}`:'';
      filter += this.descricao? `&descricao=${this.descricaoPDF}`:'';
      this.isLoading = true;
      axios
        .get(`${URL}/bancos/pdf.json?${filter}`)
        .then(response => {
          this.bancosPDF = response.data;
        })
        .catch(error => {
          this.errored = true
          this.loading = false;
      })
      .finally(() => this.mountPDF())
    },
    mountPDF: function (){ 
     this.loading = false;
     
      var Columns = [
          {title: "Código", dataKey: "codigo"},
          {title: "Descrição", dataKey: "descricao"}
      ];
      
      var Rows = this.bancosPDF.map(x => 
        ({  codigo: x.codigo,
            descricao: x.descricao
        })
      );
      
      if(this.bancosPDF.length > 0){
        let pdfName = 'Bancos'; 
        let pdfsize='a4';
        let doc = new jsPDF('p', 'pt', pdfsize);
        
        let SubtitleFiltro = ''
        let filter = 'Filtros: '
        filter += this.codigo? `[Código: ${this.codigoPDF}]`:'';
        filter += this.descricao? `[Descrição: ${this.descricaoPDF}]`:'';
        SubtitleFiltro += filter != 'Filtros: ' ? filter : '';
        
        var header = function(data) {
          doc.setFontSize(18);
          doc.setTextColor(40);
          doc.setFontStyle('normal');
          doc.text("Relatório - Bancos", data.settings.margin.left, 30);
          
          let SubtitleData = '';
          var now = new Date().toLocaleString();
          SubtitleData += `Data: ${now}`; 
          
          doc.setFontSize(12);
          doc.setTextColor(40);
          doc.setFontStyle('normal');
          doc.text(SubtitleData, data.settings.margin.left, 50);
          doc.text(SubtitleFiltro, data.settings.margin.left, 70);
        };
        
        var Options = {
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
          var pageCount = doc.internal.getNumberOfPages();
          for(var i = 0; i < pageCount; i++) { 
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
    mountCreateForm: function () {
      this.$refs.formBancoModal.show();
      this.create = true;
      this.clickedBanco = {};
    },
    mountDeleteForm: function (banco) {
      this.$refs.deleteBancoModal.show();
      this.clickedBanco = banco;
    },
    mountEditForm: function (banco) {
      this.$refs.formBancoModal.show();
      this.create = false;
      this.clickedBanco = {... banco};
    },
    deleteBanco: function (id){
      axios
        .delete(`${URL}/bancos/${id}.json`)
        .then(response => {
          this.searchBancos();
          this.$toastr.s("Registro apagado.");
          this.$refs.deleteBancoModal.hide();
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
    searchBancos: function(){
      this.loading = true;
      this.clickedBanco = {};
      
      this.codigoPDF = this.codigo;
      this.descricaoPDF = this.descricao;

      let filter = this.codigo? `codigo=${this.codigo}`:'';
      filter += this.descricao? `&descricao=${this.descricao}`:'';
      filter += `&page=${this.currentPage}`;
      axios
        .get(`${URL}/bancos.json?${filter}`)
        .then(response => {
          this.bancos = response.data.bancos;
          this.total = response.data.total;
        })
        .catch(error => {
          this.errored = true
        })
        .finally(() => this.loading = false)
    },
    createBanco: function(banco){
      axios
      .post(`${URL}/bancos.json`, {banco})
      .then(response => {
        this.$refs.formBancoModal.hide();
        this.searchBancos();
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
    updateBanco: function(banco){
      this.loading = true;
      axios
      .put(`${URL}/bancos/${banco.id}.json`, { banco })
      .then(response => {
        this.$refs.formBancoModal.hide();
        this.searchBancos();
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
      this.allSelected ? this.bancos.map( banco  => banco.selected = false) : this.bancos.map( banco  => banco.selected = true);
    },
    select: function() {
      this.allSelected = false;
    },
    closeModal(){
      this.$refs.deleteBancoModal.hide();
      this.$refs.formBancoModal.hide()
    }
  }
});
