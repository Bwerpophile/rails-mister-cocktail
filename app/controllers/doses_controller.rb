class DosesController < ApplicationController
  before_action :set_dose, only: [:cocktail_id]
  def new
    @doses = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def create
    @dose = Dose.new

    if @dose.save # => false
      redirect_to @dose
    else
      render :new
    end
  end

  def destroy
    @dose.destroy
    redirect_to doses_path
  end


  private

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def dose_params
    params.require(:dose).permit(:name)
  end
end

