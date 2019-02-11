class EnderecosController < ApplicationController
  def association
    @unidades = Unidade.all
    render json: @unidades.to_json(include: {estados: {include: :cidades, :except => [:created_at, :updated_at]}},:except => [:created_at, :updated_at])
    #render json: @unidades.to_json(include: {estados: {include: :cidades, :except => [:created_at, :updated_at]}},:except => [:created_at, :updated_at])
  end
  
  def paises
    @unidades = Unidade.all
    render json: @unidades.to_json(:except => ['created_at', 'updated_at'])
  end
  
  def pais
    pais = Unidade.find(params[:id])
    render json: pais.to_json(include: {estados: {:except => [:created_at, :updated_at]}}, :except => [:created_at, :updated_at])
  end
  
  def estado
    estado = Estado.find(params[:id])
    render json: estado.to_json(include: {cidades: {:except => [:created_at, :updated_at]}}, :except => [:created_at, :updated_at])
  end
  
  def estados
    @estados = Estado.all
    render json: @estados.to_json(:except => ['created_at', 'updated_at'],:methods => [:unidade])
  end
  
  def cidades
    @cidades = Cidade.all
    render json: @cidades.to_json(:except => ['created_at', 'updated_at'],:methods => [:estado])
  end
end
