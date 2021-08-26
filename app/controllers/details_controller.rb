class DetailsController < ApplicationController
  def index
    @allplan = Allplan.find_by(id: params[:allplan_id])
    @details = Detail.all
    @detail = Detail.new
  end
  
  def create
    @allplan = Allplan.find_by(id: params[:allplan_id])
    # @details = Detail.all
    @detail = @allplan.detail.new(detail_params)
    # @allplan.details.create(detail_params)
    # @detail = @allplan.detail.build(detail_params)
    # binding.pry
    # @detail.example = params(detail_params)
    @detail.save
    redirect_to allplan_details_path
    
  end

  def show
    @allplan = Allplan.find_by(id: params[:allplan_id])
    @detail = Detail.find(params[:id])
  end

  private
  def detail_params
     params.require(:detail).permit(:example, :post_id)
  end


end
