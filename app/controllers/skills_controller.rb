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
    flash[:success] = "user successfully assigned skill"
    redirect_to root_path
   end

   def updatetask
    @skill = Skill.find_by_id(params[:x])
    @task = Task.find_by_id(params[:y])

    if @task.skills << @skill
      flash[:success] = "Task successfully assigned skill"
    redirect_to root_path
  else
    flash[:failure] = "Task could not be assigned skill"
    redirect_to root_path
  end
   end


   def employee

    @all_users = User.all
    @users = []
    @all_users.each do |f|

    @users << [f.name, f.id]
    end


    @all_skills = Skill.all
    @skills = []
    @all_skills.each do |f|

    @skills << [f.skill_type, f.id]#params[:x]
    end

   end

   def task
    @skill = Skill.all
    @skills = []

    @skill.each do |f|
      @skills << [f.skill_type, f.id]
    end

        @task = Task.all
    @tasks = []

    @task.each do |f|
      @tasks << [f.title, f.id]
    end
   end





end