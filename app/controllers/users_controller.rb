class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def select_employee
    @all_users = User.all
    @users = []
    @all_users.each do |f|

    @users << [f.name, f.id]
    end
  end


  def view_records
    if params[:user_id] == nil
      flash[:failure] = "You must select an employee"
      redirect_to select_employee_path
    else
@user = User.find_by_id(params[:user_id])

@hours_combined = @user.time_and_attendances.select('date, sum(hours_worked) as total_hours_worked').group('date(date)')
end
  end

  def view_time_records
    if params[:user_id] == nil || params[:date] == nil
      redirect_to select_employee_path
      flash[:failure] = "You must select an employee"
    else

       @user = User.find_by_id(params[:user_id])
     @times = @user.time_and_attendances
     @year = params[:date].fetch("year").to_i
     @array = []
     @array2 = []
     @array3 = []




    @month_labels = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]


   @empty_data = []
   @month_labels.each do |f|#Here, we are setting the default values for the data set to be used in the graph.
   @empty_data << 0         #We set it to zero, because if the value is not changed (There were no absences on that day),
   end                      #we simply leave it at zero.
    
  #  @times_by_month = []                       
   
  #  @dates = @times.group_by { |m| m.date.beginning_of_month }

  #  @dates.each do |f|
  #   if f[0].to_datetime.year == @year
  #   @times_by_month << f
  #   end 
  #  end


  # @times_by_month.each do |f|
  #  @empty_data[f[0].to_date.month - 1] = f[1].count
  # end





 @hours = @times.select('date, sum(hours_worked) as total_hours_worked').group('date(date)')
 




   @hours.each do |f|
     if f.date.year == @year
     @array3 << f
     else
      #@array2 << f
   
 end

end

#Place total hours worked in the corresponding month position in the @empty_data array
@array3.each do |f|
  @empty_data[f.date.month.to_i - 1] += f.total_hours_worked
end   


end





  end

  def view_absence_records
    if params[:user_id] == nil || params[:date] == nil
      redirect_to select_employee_path
      flash[:failure] = "You must select an employee"
    else
     @user = User.find_by_id(params[:user_id])
     @absences = @user.absences
     @year = params[:date].fetch("year").to_i
     @array = []
     @array2 = []
     @array3 = []


    @month_labels = ["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]


    @empty_data = []
    @month_labels.each do |f|#Here, we are setting the default values for the data set to be used in the graph.
    @empty_data << 0         #We set it to zero, because if the value is not changed (There were no absences on that day),
    end                      #we simply leave it at zero.
    
    @absences_by_month = []                       
   
    @dates = @absences.group_by{ |m| m.date.beginning_of_month }

    @dates.each do |f|
     if f[0].to_datetime.year == @year
     @absences_by_month << f
     end 
    end


   @absences_by_month.each do |f|
    @empty_data[f[0].to_date.month - 1] = f[1].count
   end
end
  end

def update
@task_id = params[:d]#task
#@x = params[:user_id]
@user = User.find_by_id(params[:x])


@user.update_column(:task_id,@task_id)


redirect_to root_path

#@x = params[:x]
#@y = params[:y]

#@t = User.find_by_id(1)
#@t.update_column(:task_id,1)
#@t.save

#@user = User.find_by_id(params[:y])
# @user.update_column(:task_id,@x)
#flash[:success] = "Success!"
 # else
  #  flash[:failure] = "Failed!"
  #end
 #  @user.save
#flash[:success] = "Success!"
#redirect_to root_path
#  else
 #   flash[:failure] = "Failed!"
  #  redirect_to root_path
  #end
#User.find_by_id(@y)

#@user.save
#@user.update_column(:user[0],:user[1])
#redirect_to root_path
#@y = params[:y]
#@x = params[:x]
#:user.save
#@user = User.find_by_id(params[:id])
#@user.update_column(:user[0], :user[1])

#redirect_to root_path
#@user.update_column(:task_id, @x)

  #redirect_to root_path
end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to the Sample App!"    # NEW LINE
       redirect_to root_path
       #render :action => :mainmenu
       # render :controller => :static_pages :action => :menu
      #redirect_to menu_path#@user
    else
      render 'new'
    end
  end


    def view_absence_select_year
     
      if params[:user_id] == nil 
        redirect_to view_records_path
        flash[:failure] = "You must select a user first"
      else
         @user = User.find_by_id(params[:user_id])
      end
    end

    def view_time_select_year
      if params[:user_id] == nil 
        redirect_to view_records_path
        flash[:failure] = "You must select a user first"
      else
      @user = User.find_by_id(params[:user_id])
    end
  end
end