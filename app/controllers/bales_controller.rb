class BalesController < ApplicationController

  def index
    @bales = Bale.all
  end

  def show
    @bale = Bale.find(params[:id])
  end

  def update
    @
end
