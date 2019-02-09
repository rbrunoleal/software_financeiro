import Vue from 'vue/dist/vue.esm'
import TurbolinksAdapter from 'vue-turbolinks'
import VueResource from 'vue-resource'
import axios from 'axios'
import Toastr from 'vue-toastr';


Vue.use(VueResource)
Vue.use(TurbolinksAdapter)
Vue.component('vue-toastr', Toastr);

Vue.use(Toastr, {
  defaultTimeout: 3000,
  defaultProgressBar: false,
  defaultPosition: "toast-top-right",
  closeButton: true
  
});

const  URL = 'https://projeto-rbrunoleal.c9users.io/'

window.addEventListener('turbolinks:load', function () {
  axios.defaults.headers.common['X-CSRF-Token'] = document.querySelector('meta[name="csrf-token"]').getAttribute('content')
    const contasIndex = new Vue({
      el: document.getElementById('contasApp'),
      deleteBancoModal: document.getElementById('deleteContaModal'),
      data: {
        loading: true,
        create: false,
        clickedConta: {},
        contas: {},
        pickedConta: {},
        showModal: false
      },
      mounted () {
        this.searchContas();
      },
      methods: {
        mountCreateForm: function () {
          this.create = true;
          this.clickedConta = {};
        },
        mountDeleteForm: function (conta) {
          this.clickedConta = conta;
        },
        mountEditForm: function (conta) {
          this.create = false;
          this.clickedConta = {... conta};
        },
        deleteConta: function (id){
          console.log('contas/'+id+'.json');
          axios
            .delete(`${URL}contas/${id}.json`)
            .then(response => {
              this.searchContas();
              this.$toastr.s("Registro apagado.");
            })
            .catch(error => {
              this.$toastr.e("Não foi possível excluir")
            })
            .finally(() => this.loading = false)
        },
        searchContas: function(){
          this.loading = true;
          this.clickedConta = {}
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
          axios.post(`${URL}bancos.json`, {
            conta
          })
          .then(response => {
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
          axios.put(`${URL}contas/${conta.id}.json`, {
            conta
          })
          .then(response => {
              this.searchContas();
              this.$toastr.s("Registro atualizado.");
            })
            .catch(error => {
              this.$toastr.e("Não foi possível adicionar.");
            })
              .finally(() => this.loading = false)
        }
      }
    })
}) 
