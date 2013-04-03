class TasksController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]

  def new
    @task = Task.new
    @projects = []
    
    @projects_all = Project.all
    @projects_all.each do |f|
      @projects << [f.title, f.id]
    end

    
  end

  def task
  @task = Task.new
  end

def show
  @task = Task.find_by_id(params[:id])
end

  def index
  end

  def create

        
  #else
    #flash[:failure] = "Record could not be created!" 
    #  redirect_to root_path
  #    render 'absences/add'
  #  end


#     @task = Task.new
    @projects = []
     @projects_all = Project.all
     @projects_all.each do |f|
     @projects << [f.title, f.id]
    end


   @task = Task.new(params[:task])
    if @task.save
      flash[:success] = "Task Created!"
       redirect_to root_path
       #elsif 
    #     elsif  @task_created.project_id == nil# !defined?(@absence.user_id)#@current_emp)# == nil
     # @current_emp = (params[:employee_id])
    #else
  #    redirect_to projectstask_path
  #    flash[:failure] = "An error occurred"
    #end
  else
         
      #  redirect_to projectstask_path
      render 'tasks/new'
    end
    end


  def addtask
    @task = Task.new
  end
  

end