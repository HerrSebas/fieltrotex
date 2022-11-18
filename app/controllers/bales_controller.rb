class BalesController < ApplicationController

  def index
    @bales = Bale.all
  end

  def show
    @bale = Bale.find(params[:id])
  end

  def new
    @bale = Bale.new
  end

  def create
    @bale = Bale.new(bale_params)
    @bale.user = current_user
    if @bale.save
      redirect_to bales_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def bale_params
    params.require(:bale).permit(:weight, :material_id, :turn_id, :line_id, :user_id)
  end
end
