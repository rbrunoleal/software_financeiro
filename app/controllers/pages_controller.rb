class PagesController < ApplicationController
  before_action :authenticate_usuario!, :except => [:index, :contact]
  def welcome
    @contas = Conta.all
  end

  def index
    @contas = Conta.all
  end

  def contact
  end
end
