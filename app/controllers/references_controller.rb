class ReferencesController < ApplicationController
  def index
    @references = Reference.all
  end

  def show
    @reference = Reference.find(params[:id])
  end

  def new
    @reference = Reference.new
  end

  def create
    @reference = Reference.new(reference_params)
    if @reference.save
      redirect_to references_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def reference_params
    params.require(:reference).permit(:code, :name, :color, :tipo)
  end
end
