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
      contato: {},
      clickedFavorecido: {
        contatos: [],
        endereco: {},
        pessoafisica: {},
        pessoajuridica: {},
      },
      favorecidos: [],
      showModal: false,
      allSelected: false,
      show: false,
      paises: [],
      pais: {estados: []},
      estado: {cidades: []},
      step: 5,

    },
    mounted () {
      this.searchFavorecidos();
      this.setPaises();
      
    },
    methods: {
      mountCreateForm: function () {
        this.$refs.formFavorecidoModal.show();
        this.create = true;
        this.pais = [];
        this.estado = [];
        this.clickedFavorecido = {
          contatos: [],
          endereco: {},
          pessoafisica: {},
          pessoajuridica: {},
        };
      },
      mountDeleteForm: function (favorecido) {
        this.$refs.deleteFavorecidoModal.show();
        this.clickedFavorecido = favorecido;
      },
      mountEditForm: function (favorecido) {
        this.$refs.formFavorecidoModal.show();
        this.setPais(favorecido.endereco.unidade_id);
        this.setEstado(favorecido.endereco.estado_id);
        this.create = false;
        favorecido.tipo === "Física"? this.step = 2: this.step = 3;
        favorecido.pessoaFisica ? this.clickedFavorecido = {... favorecido, pessoafisica: {}} : this.clickedFavorecido = {... favorecido, pessoajuridica: {}};
        this.setPais(this.clickedFavorecido.endereco.unidade_id);
        this.setEstado(this.clickedFavorecido.endereco.estado_id);
      },
      deleteFavorecido: function (id){
        this.loading = true;
        axios
            .delete(`${URL}/pessoas/${id}.json`)
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
        this.clickedFavorecido = {
          contatos: [],
          endereco: {},
          pessoafisica: {},
          pessoajuridica: {},

        };

        axios
            .get(`${URL}/pessoas.json`)
            .then(response => {
              this.favorecidos = response.data;
              this.clickedFavorecido.pessoajuridica = {}
            })
            .catch(error => {
              this.errored = true
            })
            .finally(() => this.loading = false)
      },
      createFavorecido: function(favorecido){
        let pessoa = {tipo: favorecido.tipo, pessoafisica_attributes: favorecido.pessoafisica, endereco_attributes: favorecido.endereco, contatos_attributes: favorecido.contatos };
        this.loading = true;
        pessoa.tipo === "Física"? pessoa.pessoajuridica = null: pessoa.pessoafisica = null;
        axios
            .post(`${URL}/pessoas.json`, {pessoa})
            .then(response => {
              this.$refs.formFavorecidoModal.hide();
              this.searchFavorecidos();
              this.$toastr.s("Registro criado.");
            })
            .catch(error => {
              this.$toastr.e("Não foi possível adicionar.");
            })
            .finally(() => this.loading = false)
      },
      updateFavorecido: function(favorecido){
        this.loading = true;
        let pessoa = {id: favorecido.id, tipo: favorecido.tipo, pessoafisica_attributes: favorecido.pessoafisica, endereco_attributes: favorecido.endereco, contatos_attributes: favorecido.contatos };
        pessoa.tipo === "Física" ? pessoa.pessoajuridica = null: pessoa.pessoafisica = null;
        axios
            .put(`${URL}/pessoas/${pessoa.id}.json`, {pessoa})
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
      setPaises(){
        this.loading = true;
        axios.get(`${URL}/enderecos/paises.json`).then(response => {this.paises = response.data});
      },
      setPais(pais_id){
        this.loading = true;
        axios.get(`${URL}/enderecos/${pais_id}/pais.json`).then(response => {this.pais = response.data; this.loading = false; this.estado = {}});
      },
      setEstado(estado_id){
        this.loading = true;
        axios.get(`${URL}/enderecos/${estado_id}/estado.json`).then(response => {this.estado = response.data; this.loading = false});
      },
      addContato(){
        this.clickedFavorecido.contatos.push(this.contato);
        this.contato = {}
      },
      editContato(index){
        this.contato = this.clickedFavorecido.contatos[index];
        this.clickedFavorecido.contatos.splice(index, 1);
      },
      deleteContato(index){
        this.$set(this.clickedFavorecido.contatos[index], '_destroy', true);
      },
      undoContato(index){
        this.clickedFavorecido.contatos[index]._destroy = false;
      }
    }
  })
});
