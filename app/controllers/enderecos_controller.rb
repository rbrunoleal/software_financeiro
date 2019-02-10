class EnderecosController < ApplicationController
  def pais
    @unidades = Unidade.all
    render json: @unidades.to_json(:except => ['created_at', 'updated_at'])
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
