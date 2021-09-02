class TodopagesController < ApplicationController
  def index
    @todopages = Todopage.all
    @allplan = Allplan.find(params[:id])
    @todopage = Todopage.new
  end
  def create
    @allplan = Allplan.find(params[:id])
    @todopage = @allplan.todopages.new(todopage_params)
    @todopage.save
   
    redirect_to :root
  end

  private
  def todopage_params
     params.require(:todopage).permit(:allplan_id,:task)
  end
end
