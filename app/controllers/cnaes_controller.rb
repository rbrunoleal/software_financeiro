class CnaesController < ApplicationController
  before_action :set_cnao, only: [:show, :edit, :update, :destroy]

  # GET /cnaes
  # GET /cnaes.json
  def index
    @cnaes = Cnae.all
  end

  # GET /cnaes/1
  # GET /cnaes/1.json
  def show
  end

  # GET /cnaes/new
  def new
    @cnao = Cnae.new
  end

  # GET /cnaes/1/edit
  def edit
  end

  # POST /cnaes
  # POST /cnaes.json
  def create
    @cnao = Cnae.new(cnao_params)

    respond_to do |format|
      if @cnao.save
        format.html { redirect_to @cnao, notice: 'Cnae was successfully created.' }
        format.json { render :show, status: :created, location: @cnao }
      else
        format.html { render :new }
        format.json { render json: @cnao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cnaes/1
  # PATCH/PUT /cnaes/1.json
  def update
    respond_to do |format|
      if @cnao.update(cnao_params)
        format.html { redirect_to @cnao, notice: 'Cnae was successfully updated.' }
        format.json { render :show, status: :ok, location: @cnao }
      else
        format.html { render :edit }
        format.json { render json: @cnao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cnaes/1
  # DELETE /cnaes/1.json
  def destroy
    @cnao.destroy
    respond_to do |format|
      format.html { redirect_to cnaes_url, notice: 'Cnae was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cnao
      @cnao = Cnae.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cnao_params
      params.require(:cnao).permit(:descricao, :codigo)
    end
end
