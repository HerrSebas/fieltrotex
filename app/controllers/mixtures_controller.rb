class MixturesController < ApplicationController
  def index
    @mixtures = Mixture.all
  end

  def new
    @mixture = Mixture.new
  end

  def create
    @mixture = Mixture.new(mixture_params)
    @mixture.user = current_user
    if @mixture.save
      redirect_to mixtures_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def mixture_params
    params.require(:mixture).permit(:weight, :material_id, :reference_id, :turn_id, :line_id, :user_id)
  end
end
