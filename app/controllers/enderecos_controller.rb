class EnderecosController < ApplicationController
  def association
    @unidades = Unidade.all
    render json: @unidades.to_json(include: {estados: {include: :cidades}})
  end
  
  def paises
    @unidades = Unidade.all
    render json: @unidades.to_json
  end
  
  def pais
    pais = Unidade.find(params[:id])
    render json: pais.to_json(include: {estados: {}})
  end
  
  def estado
    estado = Estado.find(params[:id])
    render json: estado.to_json(include: {cidades: {}})
  end
  
  def estados
    @estados = Estado.all
    render json: @estados, :include => [:unidade]
  end
  
  def cidades
    @cidades = Cidade.all
    render json: @cidades, :include => [:estado]
  end
  def cidade
    @cidade = Cidade.find(params[:id])
    render json: @cidade, :include => [:estado]
  end
end
