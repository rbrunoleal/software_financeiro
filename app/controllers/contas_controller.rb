class ContasController < ApplicationController
  before_action :set_conta, only: [:show, :edit, :update, :destroy]

  # GET /contas
  # GET /contas.json
  def index
    @contas = Conta.where(nil) #Inicia Escopo
    @contas = @contas.conta_numero(params[:contaNumero]) if params[:contaNumero].present?
    @contas = @contas.agencia_numero(params[:agenciaNumero]) if params[:agenciaNumero].present?
    @contas = @contas.banco_id(params[:bancoId]) if params[:bancoId].present?

    @contas = @contas.paginate(:page => params[:page], :per_page => 10)
    respond_to do |format|
      format.html { render :index }
      format.json { render json: {contas: @contas.as_json(:include => [:banco], methods: [:conta, :agencia, :saldo]), total: @contas.total_entries}}
    end
  end
  
  def conta_json_formatado
    @contas = Conta.all
    render json: @contas.to_json(:methods => [:conta, :banco, :agencia])
  end

  # GET /contas/1
  # GET /contas/1.json
  def show
    @conta = Conta.find(params[:id])
    respond_to do |format|
      format.html { render :show }
      format.json { render json: @conta, :include => {
          :movimentos => {
              :include => [:nota, :pessoa],
              :methods => [:favorecido],
              :except => [:created_at, :updated_at]
          }
      },
      :methods => [:saldo]
      }
    end
  end

  # GET /contas/new
  def new
    @conta = Conta.new
    @bancos = Banco.all
  end

  # GET /contas/1/edit
  def edit
    @bancos = Banco.all
  end

  # POST /contas
  # POST /contas.json
  def create
    @conta = Conta.new(conta_params)

    respond_to do |format|
      if @conta.save
        format.html { redirect_to(:contas, :notice => t('activerecord.successful.messages.created', :model => @conta.class.model_name.human))}
        format.json { render :show, status: :created, location: @conta }
      else
        format.html { redirect_to(:contas, :notice => t('activerecord.unsuccessful.messages.created', :model => @conta.class.model_name.human)+ ': ' + @conta.errors.full_messages.to_sentence)}
        format.json { render :json => { :errors => @conta.errors.full_messages }, :status => 422 }
      end
    end
  end

  # PATCH/PUT /contas/1
  # PATCH/PUT /contas/1.json
  def update
    respond_to do |format|
      if @conta.update(conta_params)
        format.html { redirect_to(@conta, :notice => t('activerecord.successful.messages.updated', :model => @conta.class.model_name.human))}
        format.json { render :show, status: :ok, location: @conta }
      else
        format.html { render :edit }
        format.json { render :json => { :errors => @conta.errors.full_messages }, :status => 422 }
      end
    end
  end

  # DELETE /contas/1
  # DELETE /contas/1.json
  def destroy
    @conta.destroy
    respond_to do |format|
      format.html { redirect_to(@conta, :notice => t('activerecord.successful.messages.destroyed', :model => @conta.class.model_name.human))}
      format.json { render :json => { :errors => @conta.errors.full_messages }, :status => 422 }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_conta
      @conta = Conta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def conta_params
      params.require(:conta).permit(:banco_id, :conta_numero, :conta_digito, :agencia_numero, :agencia_digito)
    end
end
