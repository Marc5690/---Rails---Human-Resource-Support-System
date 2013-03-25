class SkillsController < ApplicationController
   def new
    @skills = Skill.new
   end

   def create
 @skills = Skill.new(params[:skill])
    if @skills.save
      flash[:success] = "Skill added!"
       redirect_to root_path
       else
        flash[:failure] = "Failed to add skill"
      redirect_to root_path
    end
   end

   def show
   end

   #def index 
   #end

   def updateemp
    @skill = Skill.find_by_id(params[:x])
    @user = User.find_by_id(params[:y])

    @user.skills << @skill
    redirect_to root_path
   end

   def updatetask
    @skill = Skill.find_by_id(params[:x])
    @task = Task.find_by_id(params[:y])

    @task.skills << @skill
    redirect_to root_path
   end


   def employee
   end

   def task
   end





end