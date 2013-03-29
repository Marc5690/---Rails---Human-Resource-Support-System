class TasksController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]

  def new
    @task = Task.new
    @project = Project.all

    
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
   @task = Task.new(params[:task])
    if @task.save
      flash[:success] = "Task Created!"
       redirect_to root_path
       else
      render 'new'
    end
    end


  def addtask
    @task = Task.new
  end
  

end