import Vue from 'vue/dist/vue.esm'
import TurbolinksAdapter from 'vue-turbolinks'
import VueResource from 'vue-resource'
import axios from 'axios'
import Toastr from 'vue-toastr';
import BootstrapVue from 'bootstrap-vue';
import { URL } from './env';
import vSelect from 'vue-select'

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
    movimentos: [],
    showModal: false,
    allSelected: false,
    show: false,
    pessoas: [{id:'',nome:''}],
    contas: {},
    nota: false,
    total: 0,
    currentPage: 1,
    valor: '',
    pessoaId: '',
    dataCompetenciaInicio: '',
    dataCompetenciaFinal: ''
  },
  mounted(){
    this.searchMovimentos();
    axios.get(`${URL}/contas/all.json`).then(response => {this.contas = response.data});
    axios.get(`${URL}/pessoas/all.json`).then(response => {this.pessoas = response.data});
  },
  methods: {
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
      filter += this.pessoaId? `&pessoaId=${this.pessoaId.id}`:'';
      filter += `&page=${this.currentPage}`;
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
    closeModal(){
      this.$refs.deleteMovimentoModal.hide();
      this.$refs.formMovimentoModal.hide()
    }
  }
});
