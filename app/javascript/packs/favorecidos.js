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

axios.defaults.headers.common['X-CSRF-Token'] = document.querySelector('meta[name="csrf-token"]').getAttribute('content');
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
    step: 1,
    unidade_id: 0,
    estado_id: 0,
    currentPage: 1,
    total: 0
  },
  mounted () {
    this.searchFavorecidos();
    this.setPaises();
  },
  methods: {
    changePage: function(page) {
      if(page !== this.currentPage){
        this.currentPage = page;
        this.searchFavorecidos();
      }
    },
    mountCreateForm: function (){
      this.$refs.formFavorecidoModal.show();
      this.create = true;
      this.pais = [];
      this.estado = [];
      this.unidade_id = 0;
      this.estado_id = 0;
      this.clickedFavorecido = {
        contatos: [],
        endereco: {},
        pessoafisica: {},
        pessoajuridica: {},
      };
      this.step = 1;
    },
    mountDeleteForm: function (favorecido){
      this.$refs.deleteFavorecidoModal.show();
      favorecido.tipo === "Jurídica" ? this.clickedFavorecido = {... favorecido, pessoafisica: {}} : this.clickedFavorecido = {... favorecido, pessoajuridica: {}};
    },
    mountEditForm: function (favorecido){
      this.$refs.formFavorecidoModal.show();
      axios.get(`${URL}/enderecos/${favorecido.endereco.cidade_id}/cidade`)
      .then(response => {
        this.unidade_id = response.data.estado.unidade_id;
        this.estado_id = response.data.estado_id;
        this.setPais(response.data.estado.unidade_id);
        this.setEstado(response.data.estado_id);
      });
      this.create = false;
      favorecido.tipo === "Física"? this.step = 2: this.step = 3;
      favorecido.tipo === "Jurídica" ? this.clickedFavorecido = {... favorecido, pessoafisica: {}} : this.clickedFavorecido = {... favorecido, pessoajuridica: {}};
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
            if (error.response.status === 422){
              error.response.data.errors.map(error => this.$toastr.e(error));
            }
            else{
               this.$toastr.e("Não foi possível excluir");
            }
          })
          .finally(() => this.loading = false)
    },
    selecionaTipo: function(tipo){
      if(tipo){
        this.clickedFavorecido.tipo = "Física";
        this.step = 2;
      }
      else{
        this.clickedFavorecido.tipo = "Jurídica";
        this.step = 3;
      }
    },
    searchFavorecidos: function(){
      this.loading = true;
      //let filter = this.contaNumero? `contaNumero=${this.contaNumero}`:'';
      //filter += this.agenciaNumero? `&agenciaNumero=${this.agenciaNumero}`:'';
      //filter += this.bancoId? `&bancoId=${this.bancoId}`:'';
      let filter = `&page=${this.currentPage}`;
      this.clickedFavorecido = {
        contatos: [],
        endereco: {},
        pessoafisica: {},
        pessoajuridica: {},

      };

      axios
          .get(`${URL}/pessoas.json?${filter}`)
          .then(response => {
            this.favorecidos = response.data.pessoas;
            this.total = response.data.total;
            this.clickedFavorecido.pessoajuridica = {}
          })
          .catch(error => {
            this.errored = true
          })
          .finally(() => this.loading = false)
    },
    createFavorecido: function(favorecido){
      let pessoa = {tipo: favorecido.tipo, endereco_attributes: favorecido.endereco, contatos_attributes: favorecido.contatos };
      this.loading = true;
      pessoa.tipo === "Física"? pessoa.pessoafisica_attributes = favorecido.pessoafisica: pessoa.pessoajuridica_attributes = favorecido.pessoajuridica;
      console.log(pessoa);
      axios
          .post(`${URL}/pessoas.json`, {pessoa})
          .then(response => {
            this.$refs.formFavorecidoModal.hide();
            this.searchFavorecidos();
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
          if (error.response.status === 422){
            error.response.data.errors.map(error => this.$toastr.e(error));
          }
          else{
            this.$toastr.e("Não foi possível atualizar as informações");
          }
        })
        .finally(() => this.loading = false)
    },
    selectAll: function(){
      this.allSelected ? this.favorecidos.map( favorecido  => favorecido.selected = false) : this.favorecidos.map( favorecido  => favorecido.selected = true);
    },
    select: function(){
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
});