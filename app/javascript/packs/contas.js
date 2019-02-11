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

window.addEventListener('turbolinks:load', function () {
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
    })
}) 
