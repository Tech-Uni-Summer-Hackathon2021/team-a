class DecdatesController < ApplicationController
  def index
    @allplan = Allplan.find(params[:id])
    @user = User.find(params[:id])
    @day = Day.where(id: @allplan.id).first


    # @decdates = Decdate.all
    # @decdate = Decdate.new
    # @days = Day.all
    @form = Form::DecdateCollection.new
  end
  def create
    @form = Form::DecdateCollection.new(decdate_collection_params)
    @form.save
    redirect_to decdateindex_path
  end
    # @decdates = Decdate.all
    # @days = Day.all
    # @days.each do |day|
    #   @decdate = @allplan.@user.decdate.new(decdate_params)
    # @decdate.save
    # end
    # redirect_to root_path

  private

  def decdate_params
    params.require(:room).permit(:dectate_id, :user_id, :dateid, :result)
  end
  
  def decdate_collection_params
    params.require(:form_decdate_collection)
    .permit(decdates_attributes: [:allplan_id,:user_id, :dayid, :result])
  end
end
