class PessoasController < ApplicationController
  before_action :set_pessoa, only: [:show, :edit, :update, :destroy]

  # GET /pessoas
  # GET /pessoas.json
  def index
    @pessoas = Pessoa.where(nil) #Inicia Escopo
    @pessoas = @pessoas.edu(params[:nome]) if params[:nome].present?
    @pessoas = @pessoas.edua(params[:identificador]) if params[:identificador].present?
    
    @pessoas = @pessoas.paginate(:page => params[:page], :per_page => 10)
    respond_to do |format|
      format.html { render :index }
      format.json { render json: {pessoas: @pessoas.as_json(:include => [:pessoafisica, :pessoajuridica, :endereco, :contatos], methods: [:nome, :identificador]), total: @pessoas.total_entries}}
    end
  end

  # GET /pessoas/1
  # GET /pessoas/1.json
  def show
  end

  # GET /pessoas/new
  def new
    @pessoa = Pessoa.new
    @contato = @pessoa.contatos.build
  end

  # GET /pessoas/1/edit
  def edit
  end

  # POST /pessoas
  # POST /pessoas.json
  def create
    @pessoa = Pessoa.new(pessoa_params)

    respond_to do |format|
      if @pessoa.save
        format.html { redirect_to(@pessoa, :notice => t('activerecord.successful.messages.created', :model => @pessoa.class.model_name.human))}
        format.json { render :show, status: :created, location: @pessoa }
      else
        format.html { render :new }
        format.json { render :json => { :errors => @pessoa.errors.full_messages }, :status => 422 }
      end
    end
  end

  # PATCH/PUT /pessoas/1
  # PATCH/PUT /pessoas/1.json
  def update
    respond_to do |format|
      if @pessoa.update(pessoa_params)
        format.html { redirect_to(@pessoa, :notice => t('activerecord.successful.messages.updated', :model => @pessoa.class.model_name.human))}
        format.json { render :show, status: :ok, location: @pessoa }
      else
        format.html { render :edit }
        format.json { render :json => { :errors => @pessoa.errors.full_messages }, :status => 422 }
      end
    end
  end

  # DELETE /pessoas/1
  # DELETE /pessoas/1.json
  def destroy
    @pessoa.destroy
    respond_to do |format|
      format.html { redirect_to(@pessoa, :notice => t('activerecord.successful.messages.destroyed', :model => @pessoa.class.model_name.human))}
      format.json { render :json => { :errors => @pessoa.errors.full_messages }, :status => 422 }
    end
  end

  #GET /pessoas/all
  def all
    @pessoas = Pessoa.all
    respond_to do |format|
      format.json { render json: @pessoas, :only => [:id], :methods => [:nome] }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pessoa
      @pessoa = Pessoa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pessoa_params
      params.require(:pessoa).permit(:tipo, pessoajuridica_attributes: [:id, :razaosocial, :cnpj, :nomefantasia, :_destroy], pessoafisica_attributes: [:id, :sexo, :cpf, :rg, :nome, :data_nascimento, :_destroy], endereco_attributes: [:id,:unidade_id,:estado_id,:cidade_id, :numero,:descricao,:complemento,:cep,:bairro, :_destroy], contatos_attributes: [:id, :tipo, :campo, :_destroy])
    end
end
