class PlanController < ApplicationController
  def index
    @plans = Plan_list.all
    @plan = Plan_list.new
  end

  def create
    @plan = Plan_list.new(plan_list_params)
    @plan.save
      redirect_to plan_show_path
  end

  def show
  end

  private
    def plan_list_params
      params.require(:plan_list).permit(:dec_dateid, :dec_date)
    end
end
