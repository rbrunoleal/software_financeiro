class HomeController < ApplicationController
  def index
    @contas = Conta.all
  end
end
