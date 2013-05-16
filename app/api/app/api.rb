require 'grape'


module App


#class API < Grape::API

  #mount Blog::API1
  #mount Blog::API2

  # end
#end
 #helpers do
#def current_company
#    Company.find_by_subdomain! request.subdomain
#  end
#  helper_method :current_company
  
 # def scope_current_company
 #   Company.current_id = current_company.id
 #   yield
 # ensure
 #   Company.current_id = nil
 # end


#  def self.current_id=(id)
#    Thread.current[:company_id] = id
#  end
  #
  #def self.current_id
  #  Thread.current[:company_id]
  #end


#def ApplicationController.get_url()
#    request.env["REQUEST_URI"]
#  end

#@Company = request_uri()

#end#End helpers



   class API < Grape::API#::BaseController   #Api::V1::BaseController
	format :json

#request.subdomain#request.subdomains(0).first


helpers do

   def userexists(id)
    if User.unscoped.exists?(:id=>id)
      return true
    else 
      error!("The user with id:#{id} does not exist.", 404)
    end
  end

def userauthenticate(id, company, password)
  @user = User.unscoped.find_by_id(id)
   if @user.company_id == company.to_i && @user.try(:authenticate, (password))  
return true
else 
  return false
  end
  end

  def taskauthenticate(task, company)
  @task = Task.unscoped.find_by_id(task)
   if @task.company_id == company.to_i
return true
else 
  return false
  end
  end


   def taskexists(id)
    if Task.unscoped.exists?(:id=>id)
      return true
    else 
      error!("The task with id:#{id} does not exist.", 404)
    end
  end



    def projectauthenticate(project, company)
  @project = Project.unscoped.find_by_id(project)
   if @project.company_id == company.to_i
return true
else 
  return false
  end
  end


   def projectexists(id)
    if Project.unscoped.exists?(:id=>id)
      return true
    else 
      error!("The project with id:#{id} does not exist.", 404)
    end
  end



end#End helpers

#resource :companies do

#get do
#Company.all
#end#End endpoint
#end#End resource

 #constraints(:company => 1) do
    # Versioning: api.domain.com/v1/

#constraints :subdomain => 'apple' do

#http://apple.lvh.me:3000/api/users
 resource :users do

  #skip_around_filter :scope_current_company
   
    get ':id/:company/:password' do    

    #@user = User.unscoped.find_by_id(:id)

    if userexists params[:id]
      @user = User.unscoped.find_by_id(params[:id])
      if userauthenticate(params[:id],params[:company],params[:password])# @user.company_id == (params[:company]).to_i && @user.try(:authenticate, (params[:password]).to_s)#.password == (params[:password]).to_s
      
      @user

    else
      error!("User could not be identified or does not exist!", 400)
    end
    #Foo.unscoped.where(:baz => baz) 
    #@Company = @env['REQUEST_URL']
    #@c = @Company.subdomain
    #@c
end

    #User.unscoped.all.where(:company_id => (Company.find_by_name(apple)).id)
              
    end#End endpoint


     get ':user/:company/:password/absences' do    
       if userexists params[:id]

      @user = User.unscoped.find_by_id(params[:id])
      if userauthenticate(params[:id],params[:company],params[:password]) && @user.absences.any?# @user.company_id == (params[:company]).to_i && @user.try(:authenticate, (params[:password]).to_s)#.password == (params[:password]).to_s
      @absences = @user.absences# if @user.absences.any?
 

    else
      error!("User has no absence records, does not exist, or the company does not exist!", 400)
    end
    
          end    
    end#End endpoint



    get ':id/:company/:password/timeandattendances' do    

 if userexists params[:id]
      @user = User.unscoped.find_by_id(params[:id])
      if userauthenticate(params[:id],params[:company],params[:password]) && @user.time_and_attendances.any?# @user.company_id == (params[:company]).to_i && @user.try(:authenticate, (params[:password]).to_s)#.password == (params[:password]).to_s
      @absences = @user.time_and_attendances# if @user.absences.any?
 

    else
      error!("User has no Time and Attendance records, does not exist or the company does not exist!", 400)
    end
    end
              
    end#End endpoint
end#End users

resource :tasks do

  get ':task/:company' do    
    if taskexists params[:task]
      @task = Task.unscoped.find_by_id(params[:task])
if taskauthenticate(params[:task],params[:company])
     
 @task

   else
     error!("Task does not exist, or its company does not exist!", 400)
   end
    end
              
    end#End endpoint




     get ':task/:company/timeandattendances' do    
    if taskexists params[:task]
      @task = Task.unscoped.find_by_id(params[:task])
if taskauthenticate(params[:task],params[:company]) && @task.time_and_attendances.any?
    
 @task.time_and_attendances

   else
     error!("Task/company does not exist or the task not have any Time and Attendance records!", 400)
   end
    end
              
    end#End endpoint



end









resource :projects do

  get ':project/:company' do    
    if projectexists params[:project]
      @project = Project.unscoped.find_by_id(params[:project])
if projectauthenticate(params[:project],params[:company])
     
 @project

   else
     error!("Project/company does not exist!", 400)
   end
    end
              
    end#End endpoint




     get ':project/:company/timeandattendances' do    
    if projectexists params[:project]
      @project = Project.unscoped.find_by_id(params[:project])
if projectauthenticate(params[:project],params[:company]) && @project.time_and_attendances.any?
    
 @project.time_and_attendances

   else
     error!("Project/company does not exist or the project does not have any Time and Attendance records!", 400)
   end
    end
              
    end#End endpoint

  end#End projects 




 end#End API
end#End module