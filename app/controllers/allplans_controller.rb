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
    @allplan.update(allplan_params)
    # ////////////////////////////////////////
    require "date"
    d = Date.today
    month = d.month
    date = d.day
    num = 0

    p month
    p date
    if month === 2 or month === 4 or month === 6 or month === 9
       while num < 31 do
        if date === 30
          date = 0;
          month += 1
        end
         date += 1
        #  monthbox.push(month)
        #  daybox.push(date)
        @allplan.day.create(month:month,day:date)
        num+=1
       end
    else
       while num < 31 do
        if date === 31
          date = 0;
          month += 1
        end
         date = date += 1
        #  monthbox.push(month)
        #  daybox.push(date)
        @allplan.days.create(month:month,day:date)
        num+=1
       end
    end
    # ////////////////////////////////////////////
    
    redirect_to allplan_path(@allplan)
  end
  
  def show
    @allplan = Allplan.find(params[:id])
  end

  private
  def allplan_params
     params.require(:allplan).permit(:dec_dateid,:dec_date,:playeat)
  end

end
