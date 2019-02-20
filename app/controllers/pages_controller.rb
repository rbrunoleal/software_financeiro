class PagesController < ApplicationController
  before_action :authenticate_usuario!, :except => [:index, :contact]
  def welcome
  end

  def index
  end

  def contact
  end
end
