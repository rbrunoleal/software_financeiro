import Vue from 'vue/dist/vue.esm'
import TurbolinksAdapter from 'vue-turbolinks'
import VueResource from 'vue-resource'
import axios from 'axios'
import Toastr from 'vue-toastr';
import BootstrapVue from 'bootstrap-vue'
import { URL } from './env';


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
const contasIndex = new Vue({
  el: document.getElementById('contasApp'),
  data: {
    loading: true,
    create: false,
    clickedConta: {banco: {}},
    contas: [],
    pickedConta: {},
    showModal: false,
    allSelected: false,
    show: false,
    bancos: {}
  },
  mounted () {
    this.searchContas();
    axios.get(`${URL}/bancos.json`).then(response => {this.bancos = response.data});
  },
  methods: {
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
          this.$toastr.e("Não foi possível excluir")
        })
        .finally(() => this.loading = false)
    },
    searchContas: function(){
      this.loading = true;
      this.clickedConta = {banco: {}};
      axios
        .get(`${URL}/contas.json`)
        .then(response => {
          this.contas = response.data
        })
        .catch(error => {
          this.errored = true
        })
          .finally(() => this.loading = false)
    },
    createConta: function(conta){
      axios.post(`${URL}/contas.json`, {
        conta
      })
      .then(response => {
          this.$refs.formContaModal.hide();
          this.searchContas();
          this.$toastr.s("Registro criado.");
        })
         .catch(error => {
            this.$toastr.e("Não foi possível adicionar.");
            if (error.response.status == 422){
              var lErros = error.response.data.errors;
              var i = 0;
              for(i=0; i < lErros.length; i++){
                this.$toastr.e(lErros[i]);
              }
            }
          })
            .finally(() => this.loading = false)
    },
    updateConta: function(conta){
      this.loading = true;
      axios.put(`${URL}/contas/${conta.id}.json`, {
        conta
      })
      .then(response => {
          this.$refs.formContaModal.hide();
          this.searchContas();
          this.$toastr.s("Registro atualizado.");
        })
        .catch(error => {
          this.$toastr.e("Não foi possível adicionar.");
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
    movimentos: [],
    pickedMovimento: {},
    showModal: false,
    allSelected: false,
    show: false,
    pessoas: {},
    contas: {},
    nota: false
  },
  mounted(){
    this.searchMovimentos();
    axios.get(`${URL}/contas.json`).then(response => {this.contas = response.data});
    axios.get(`${URL}/pessoas.json`).then(response => {this.pessoas = response.data});
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
            this.$toastr.e("Não foi possível excluir")
          })
          .finally(() => this.loading = false)
    },
    searchMovimentos: function(){
      this.loading = true;
      this.clickedMovimento = {pessoa: {}, conta: {}, nota: {}};
      axios
          .get(`${URL}/movimentos.json`)
          .then(response => {
            this.movimentos = response.data
          })
          .catch(error => {
            this.errored = true
          })
          .finally(() => this.loading = false)
    },
    createMovimento: function(lmovimento){
      let movimento = {
        data_competencia: lmovimento.data_competencia,
        data_vencimento: lmovimento.data_vencimento,
        descricao: lmovimento.descricao,
        valor: lmovimento.valor,
        conta_id: lmovimento.conta_id,
        pessoa_id: lmovimento.pessoa_id,
        nota_attributes: lmovimento.nota
      };
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
            this.$toastr.e("Não foi possível adicionar.");
          })
          .finally(() => this.loading = false)
    },
    updateMovimento: function(lmovimento){
      this.loading = true;
      let movimento = {
        id: lmovimento.id,
        data_competencia: lmovimento.data_competencia,
        data_vencimento: lmovimento.data_vencimento,
        descricao: lmovimento.descricao,
        valor: lmovimento.valor,
        conta_id: lmovimento.conta_id,
        pessoa_id: lmovimento.pessoa_id,
        nota_attributes: lmovimento.nota
      };
      axios.put(`${URL}/movimentos/${movimento.id}.json`, {
        movimento
      })
          .then(response => {
            this.$refs.formMovimentoModal.hide();
            this.searchMovimentos();
            this.$toastr.s("Registro atualizado.");

          })
          .catch(error => {
            this.$toastr.e("Não foi possível adicionar.");
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