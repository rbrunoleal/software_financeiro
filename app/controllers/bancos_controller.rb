class BancosController < ApplicationController
  before_action :set_banco, only: [:show, :edit, :update, :destroy]

  # GET /bancos
  # GET /bancos.json
  def index
    #Busca Banco
    @bancos = Banco.where(nil) #Inicia Escopo
    @bancos = @bancos.codigo(params[:codigo]) if params[:codigo].present?
    @bancos = @bancos.descricao(params[:descricao]) if params[:descricao].present?
    #End Busca Banco
    
    @bancos = @bancos.paginate(:page => params[:page], :per_page => 10)
    respond_to do |format|
      format.html { render :index }
      format.json { render json:{ bancos: @bancos, total: @bancos.total_entries } }
    end
  end


  # GET /bancos/1
  # GET /bancos/1.json
  def show
  end

  # GET /bancos/new
  def new
    @banco = Banco.new
  end

  # GET /bancos/1/edit
  def edit
  end

  # POST /bancos
  # POST /bancos.json
  def create
    @banco = Banco.new(banco_params)

    respond_to do |format|
      if @banco.save
        format.html { redirect_to(:bancos, :notice => t('activerecord.successful.messages.created', :model => @banco.class.model_name.human))}
        format.json { render :show, status: :created, location: @banco }
      else
        format.html { render :new }
        format.json { render :json => { :errors => @banco.errors.full_messages }, :status => 422 }
      end
    end
  end

  # PATCH/PUT /bancos/1
  # PATCH/PUT /bancos/1.json
  def update
    respond_to do |format|
      if @banco.update(banco_params)
        format.html { redirect_to(:bancos, :notice => t('activerecord.successful.messages.updated', :model => @banco.class.model_name.human))}
        format.json { render :show, status: :ok, location: @banco }
      else
        format.html { render :edit }
        format.json { render :json => { :errors => @banco.errors.full_messages }, :status => 422 }
      end
    end
  end

  # DELETE /bancos/1
  # DELETE /bancos/1.json
  def destroy
    @banco.destroy
    respond_to do |format|
      format.html { redirect_to(@banco, :notice => t('activerecord.successful.messages.destroyed', :model => @banco.class.model_name.human))}
      format.json { render :json => { :errors => @banco.errors.full_messages }, :status => 422 }
    end
  end

  #GET /bancos/all
  def all
    @bancos = Banco.all
    respond_to do |format|
      format.json{ render json: @bancos, :only => [:id, :descricao]}
    end
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_banco
      @banco = Banco.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def banco_params
      params.require(:banco).permit(:descricao, :codigo)
    end
end
