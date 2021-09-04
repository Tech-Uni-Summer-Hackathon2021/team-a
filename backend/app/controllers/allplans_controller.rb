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
  
  
  def user
    @allplan = Allplan.find(params[:id])
    @allplanid = Allplan.where(id: @allplan.id)
    @allplandedlind = @allplanid[0].created_at + (240 * 60 * 24)
    @allplannow = Time.now
    @flag = 0
    if @allplannow > @allplandedlind
      @flag = 1
    else
      @user = User.new
    end
    
    
  end
  def usercreate
    @allplan = Allplan.find(params[:id])
    @user = @allplan.users.new(user_params)
    if @user.save
      session[:current_user_id] = user.id
      @user = User.last
      redirect_to decdateindex_path(user_id: @user)
    else
      flash[:alert] = 'Save error! 名前が重複している可能性があります別の表記をお試しください'
      render :user
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
    date = d.day+3
    num = 0

    p month
    p date
    if month === 2 or month === 4 or month === 6 or month === 9
       while num < 31 do
        if date >= 30
          date = date -30;
          month += 1
        end
         date += 1
        #  monthbox.push(month)
        #  daybox.push(date)
        @allplan.days.create(month:month,day:date)
        num+=1
       end
    else
      while num < 31 do
        if  date >= 31
          date = date -31;
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

  def sum
    @flag = 0
    @allplan = Allplan.find(params[:id])
    @allplanid = Allplan.where(id: @allplan.id)
    @allplandedlind = @allplanid[0].created_at + (240 * 60 * 24)
    @allplannow = Time.now
    lefttimes = @allplandedlind - @allplannow 
    lefttimemany =lefttimes / (60 * 60 * 24)
    @lefttime= lefttimemany.truncate(2)
    if @allplannow > @allplandedlind
      @flag = 1
      # 今の部屋のidを取得
      @allplan = Allplan.find(params[:id])
      # 今の部屋のユーザー全取得
      @users = User.where(allplan_id: @allplan.id)
      @usersleng = @users.length #3

      # 今の部屋の予定の結果全取得
      @decdates = Decdate.where(allplan_id: @allplan.id)
      @decdatesleng = @decdates.length  #93

      # 今の部屋の予定の結果全取得の中でdayidがi番目のもののdayidをdecdatedayidに入れる
      i = 0
      @sums = []
      while i < 31 do
        @decdatedayids = Decdate.where(dayid: @decdates[i].dayid)
        @decdatedayidsleng = @decdatedayids.length
        
        @sum = 0
        for decdatedayid in @decdatedayids do
          @sum = @sum+decdatedayid.result.to_i
        end
        @sums.push(@sum)
        i+=1
      end
      # 投票結果の中から最大値を求める
      @max_val= @sums.max
      # 最大値が何番目の要素か求める
      def search(target_num, sums)
        sums.each_with_index do |num, index|
          if num == target_num
            @max_point = index
          return
          end
        end
      end
      search(@max_val, @sums)
      #最大値番目のdayid取得
      @resultid = @decdates[@max_point].dayid
      # 日付idがわかったので、月と日にちを取り出す
      @resultdate = Day.find(@resultid)
      @resultmonth=@resultdate.month###################################
      @resultday=@resultdate.day######################################

      # 決まった日付idの日に丸のユーザーidを取得
      @resultuserids=[]
      @resultusers = Decdate.where(dayid: @resultid, result: 1)
      for resultuser in @resultusers do
        @resultuserids.push(resultuser.user_id)
      end
      # ユーザーidがわかったので、名前を取り出す 
      @resultusersid = User.where(id: @resultuserids)
      j = 0
      @resultusernames = []
      while j < @resultusersid.length do
      @resultusernames.push(@resultusersid[j].username)###################################
      j+=1
      end

      # やることを決める
      @todos = Todopage.where(allplan_id: @allplan.id)
      @todopoint = @todos.sample
      @todo = @allplan.result_todos.new(decdo: @todopoint.task)
      @todo.save
      @dectodo = ResultTodo.where(allplan_id: @allplan.id).first
    else
      @flag = 0
    end
    # @allplancreate = allplancreate.strftime("%Y年%m月%d日")

    # if test
      
    # end



  
  end
  private
  def allplan_params
     params.require(:allplan).permit(:dec_dateid,:dec_date,:playeat)
  end

  def user_params
     params.require(:user).permit(:username,:allplan_id)
  end

end
