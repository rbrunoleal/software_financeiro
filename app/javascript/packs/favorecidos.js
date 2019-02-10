import Vue from 'vue/dist/vue.esm'
import TurbolinksAdapter from 'vue-turbolinks'
import VueResource from 'vue-resource'
import axios from 'axios'
import Toastr from 'vue-toastr';
import BootstrapVue from 'bootstrap-vue'
import { URL } from './env';
import Vuetify from 'vuetify'

Vue.use(Vuetify);

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
  const favorecidosApp = new Vue({
    el: document.getElementById('favorecidosApp'),
    data: {
      dialog: false,
      loading: true,
      create: false,
      clickedFavorecido: {banco: {}},
      favorecidos: [],
      pickedFavorecido: {},
      showModal: false,
      allSelected: false,
      show: false,
      bancos: {},
      step:1,
      registration:{
        name:null,
        email:null,
        street:null,
        city:null,
        state:null,
        numtickets:0,
        shirtsize:'XL'
      },
      sizes:['S','M','L','XL']
    },
    mounted () {
      this.searchFavorecidos();
      axios.get(`${URL}/bancos.json`).then(response => {this.bancos = response.data});
    },
    methods: {
      mountCreateForm: function () {
        this.$refs.formFavorecidoModal.show();
        this.create = true;
        this.clickedFavorecido = {banco: {}};
      },
      mountDeleteForm: function (favorecido) {
        this.$refs.deleteFavorecidoModal.show();
        this.clickedFavorecido = favorecido;
      },
      mountEditForm: function (favorecido) {
        this.$refs.formFavorecidoModal.show();
        this.create = false;
        this.clickedFavorecido = {... favorecido};
      },
      deleteFavorecido: function (id){
        axios
            .delete(`${URL}pessoas/${id}.json`)
            .then(response => {
              this.searchFavorecidos();
              this.$toastr.s("Registro apagado.");
              this.$refs.deleteFavorecidoModal.hide();
            })
            .catch(error => {
              this.$toastr.e("Não foi possível excluir")
            })
            .finally(() => this.loading = false)
      },
      searchFavorecidos: function(){
        this.loading = true;
        this.clickedFavorecido = {banco: {}};
        axios
            .get(`${URL}/pessoas.json`)
            .then(response => {
              this.favorecidos = response.data
            })
            .catch(error => {
              this.errored = true
            })
            .finally(() => this.loading = false)
      },
      createFavorecido: function(favorecido){
        axios.post(`${URL}pessoas.json`, {
          favorecido
        })
            .then(response => {
              this.$refs.formFavorecidoModal.hide();
              this.searchFavorecidos();
              this.$toastr.s("Registro criado.");
            })
            .catch(error => {
              console.log(error);
              this.$toastr.e("Não foi possível adicionar.");
            })
            .finally(() => this.loading = false)
      },
      updateFavorecido: function(favorecido){
        this.loading = true;
        axios.put(`${URL}pessoas/${favorecido.id}.json`, {
          favorecido
        })
            .then(response => {
              this.$refs.formFavorecidoModal.hide();
              this.searchFavorecidos();
              this.$toastr.s("Registro atualizado.");
            })
            .catch(error => {
              this.$toastr.e("Não foi possível adicionar.");
            })
            .finally(() => this.loading = false)
      },
      selectAll: function() {
        this.allSelected ? this.favorecidos.map( favorecido  => favorecido.selected = false) : this.favorecidos.map( favorecido  => favorecido.selected = true);
      },
      select: function() {
        this.allSelected = false;
      },
      closeModal(){
        this.$refs.deleteFavorecidoModal.hide();
        this.$refs.formFavorecidoModal.hide()
      },
      submit() {
        alert('This is the post. Blah');
      }
    }
  })
});