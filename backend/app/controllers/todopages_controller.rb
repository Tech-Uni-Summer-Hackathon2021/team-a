class TodopagesController < ApplicationController
  def index
    @allplan = Allplan.find(params[:id])
    @todopages = Todopage.where(allplan_id: @allplan.id)
    @todopage = Todopage.new
  end
  def create
    @allplan = Allplan.find(params[:id])
    @todopage = @allplan.todopages.new(todopage_params)
    @todopage.save
   
    redirect_to todopage_path
  end

  private
  def todopage_params
     params.require(:todopage).permit(:allplan_id,:task)
  end
end