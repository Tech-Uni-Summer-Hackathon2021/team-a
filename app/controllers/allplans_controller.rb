class AllplansController < ApplicationController
  def index
    @allplans = Allplan.all
    @allplan = Allplan.new
  end
  def create
    @allplans = Allplan.all
    @allplan = Allplan.new(allplan_params)
    if @allplan.save
      redirect_to allplan_details_path(@allplan)
    else
      render :index
    end
  end
  
  def show
    @allplan = Allplan.find(params[:id])
  end

  private
  def allplan_params
     params.require(:allplan).permit(:dec_dateid,:dec_date)
  end

end
