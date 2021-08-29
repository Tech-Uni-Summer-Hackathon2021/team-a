class AllplansController < ApplicationController
  def index
    @allplans = Allplan.all
    @allplan = Allplan.new
  end
  def create
    @allplans = Allplan.all
    @allplan = Allplan.new(allplan_params)
    if @allplan.save
      redirect_to edit_allplan_path(@allplan)
    else
      render :index
    end
  end
  
  def edit
    @allplan = Allplan.find(params[:id])
  end
  
  def update
    @allplan = Allplan.find(params[:id])
    if @allplan.update(allplan_params)
      redirect_to root_path, notice: 'Success!'
    else
      flash[:alert] = 'Save error!'
      render :edit
      redirect_to root_path, notice: 'Success!'
    end
  end
  
  def show
    @allplan = Allplan.find(params[:id])
  end

  private
  def allplan_params
     params.require(:allplan).permit(:dec_dateid,:dec_date,:playeat)
  end

end
