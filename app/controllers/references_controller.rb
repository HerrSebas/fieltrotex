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
    @reference = Reference.find(params[:id])
  end

  def update
    @reference = Reference.find(params[:id])
    if @reference.update(reference_params)
      redirect_to @reference
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def delete
    @reference = Reference.find(params[:id])
    @reference.destroy
    redirect_to references_path, status: :see_other
  end

  private

  def reference_params
    params.require(:reference).permit(:code, :name, :color, :tipo)
  end
end
