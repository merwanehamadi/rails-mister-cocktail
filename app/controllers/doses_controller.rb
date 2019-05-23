class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find_by_id(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    raise
  end

  def dose_params
    params.require(:dose).permit(:description)
  end
end
