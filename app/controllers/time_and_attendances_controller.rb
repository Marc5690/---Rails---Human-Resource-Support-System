class TimeAndAttendancesController < ApplicationController
  def add
    @timeandattendance = TimeAndAttendance.new
    @q = params[:q]
  end

  def index 
  end
 def show
  @time_and_attendance = TimeAndAttendance.find_by_id(params[:id])
 end

 
  def create
    @timeandattendance = TimeAndAttendance.new(params[:time_and_attendance])
    if @timeandattendance.save
      flash[:success] = "Record added!" 
      redirect_to root_path
   else
      flash[:failure] = "Failed to add record" 
      redirect_to root_path
    end
  end
  
  def delete
  end

  def emptime
     @user = current_user
@time = @user.time_and_attendances

@time_and_attendances = @time.paginate(:per_page => 5, :page => params[:page], :order => 'created_at desc')












@hours = []
@times = @user.time_and_attendances.select('date, sum(hours_worked) as total_hours_worked').group('date(date)')
@times.each do |f|
  @hours << f

end  
@label = []
@data = []

@hours.each do |f|
  if f.date.month == 1#Time.now.month
@label << f.date.to_date.to_s
@data << f.total_hours_worked
end
end
  end

   def addemptime
     @user = current_user
@timeandattendance = TimeAndAttendance.new
  
  end

  def destroy
    @timeandattendance = TimeAndAttendance.find_by_id(params[:id])
    if @timeandattendance.destroy()
    redirect_to root_path
flash[:success] = "Successfully deleted!"
  else
      redirect_to root_path
flash[:failure] = "Delete unsuccessful!"
  end
end
  
  def delrec
  end
 
  def display
  end
 
  def edit
  end

  def edit2
     #@q = params[:q]
     
     @user = User.find_by_id(params[:q])#params[:q])
@time_and_attendances = @user.time_and_attendances
  end

  def editrec
  @user = User.paginate(:per_page => 5, :page => params[:page], :order => 'created_at desc')
  @q = params[:q]
  end

  def menu
  end

  def select
    @user = User.paginate(:per_page => 5, :page => params[:page], :order => 'created_at desc')
    @q = params[:q]
  end

  def selectedit
  end
end