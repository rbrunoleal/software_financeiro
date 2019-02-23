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
    bancosfiltro: [],
    showModal: false,
    allSelected: false,
    FiltroCodigo: '',
    FiltroDescricao: '',
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
      var lBancos = this.bancosfiltro;
      var Columns = [
          {title: "Código", dataKey: "codigo"},
          {title: "Descrição", dataKey: "descricao"}
      ];
      
      var Rows = lBancos.map(x => 
        ({  codigo: x.codigo,
            descricao: x.descricao
        })
      );
      
      if(lBancos.length > 0){
        let pdfName = 'Bancos'; 
        let pdfsize='a4';
        let doc = new jsPDF('p', 'pt', pdfsize);
        
        if(Rows.length > 0){
          doc.setFontStyle("bold");
          doc.setFontSize(20);
          doc.text("Relatório - Bancos", 65, 25);
          //doc.text(150,200, doc.internal.getCurrentPageInfo().pageNumber + "/" + doc.internal.getNumberOfPages());
          doc.autoTable(Columns, Rows, {
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
          });
          doc.save(pdfName + ".pdf");
        }
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
      axios
        .get(`${URL}/bancos.json?page=${this.currentPage}`)
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
