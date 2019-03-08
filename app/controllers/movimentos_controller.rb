class MovimentosController < ApplicationController
  before_action :set_movimento, only: [:show, :edit, :update, :destroy]

  # GET /movimentos
  # GET /movimentos.json
  def index
    @movimentos = Movimento.where(nil) #Inicia Escopo
    @movimentos = @movimentos.data_competencia(params[:dataCompetenciaInicio]) if params[:dataCompetenciaInicio].present?
    @movimentos = @movimentos.data_competencia_final(params[:dataCompetenciaFinal]) if params[:dataCompetenciaFinal].present?
    @movimentos = @movimentos.pessoa(params[:pessoa]) if params[:pessoa].present?
    @movimentos = @movimentos.valor(params[:valor]) if params[:valor].present?
    @movimentos = @movimentos.receita(params[:receita]) if params[:receita].present?
    @movimentos = @movimentos.despesa(params[:despesa]) if params[:despesa].present?
    
    @movimentos = @movimentos.paginate(:page => params[:page], :per_page => params[:per_page])
    respond_to do |format|
      format.html { render :index }
      format.json { render json: {movimentos: @movimentos.as_json(:include => [:conta, :pessoa, :nota], methods: [:favorecido, :contabancaria, :informacaonota]), total: @movimentos.total_entries}}
    end
  end

  # GET /movimentos/1
  # GET /movimentos/1.json
  def show
  end

  # GET /movimentos/new
  def new
    @movimento = Movimento.new
    @contas = Conta.all
  end

  # GET /movimentos/1/edit
  def edit
    @contas = Conta.all
  end

  # POST /movimentos
  # POST /movimentos.json
  def create
    @movimento = Movimento.new(movimento_params)

    respond_to do |format|
      if @movimento.save
        format.html { redirect_to(@movimento, :notice => t('activerecord.successful.messages.created', :model => @movimento.class.model_name.human))}
        format.json { render :show, status: :created, location: @movimento }
      else
        format.html { render :new }
        format.json { render :json => { :errors => @movimento.errors.full_messages }, :status => 422 }
      end
    end
  end

  # PATCH/PUT /movimentos/1
  # PATCH/PUT /movimentos/1.json
  def update
    respond_to do |format|
      if @movimento.update(movimento_params)
        format.html { redirect_to(@movimento, :notice => t('activerecord.successful.messages.updated', :model => @movimento.class.model_name.human))}
        format.json { render :show, status: :ok, location: @movimento }
      else
        format.html { render :edit }
        format.json { render :json => { :errors => @movimento.errors.full_messages }, :status => 422 }
      end
    end
  end

  # DELETE /movimentos/1
  # DELETE /movimentos/1.json
  def destroy
    @movimento.destroy
    respond_to do |format|
      format.html { redirect_to(@movimento, :notice => t('activerecord.successful.messages.destroyed', :model => @movimento.class.model_name.human))}
      format.json { render :json => { :errors => @movimento.errors.full_messages }, :status => 422 }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movimento
      @movimento = Movimento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movimento_params
      params.require(:movimento).permit(:data_competencia, :data_vencimento, :descricao, :valor, :conta_id, :pessoa_id, nota_attributes: [:id, :data, :descricao, :numero, :codigo, :_destroy])
    end	    
end
