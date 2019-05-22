class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find_by_id(params[:cocktail_id])
    @dose = Dose.new
  end
end
