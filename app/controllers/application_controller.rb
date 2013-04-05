class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper    

  before_filter :require_login

#prepend_before_filter :require_login
 # skip_before_filter :require_login


##################################################################################################

prepend_around_filter :scope_current_company
#around_filter :scope_current_company
private



  #def current_user
  #  @current_user = User.find_by_remember_token(cookies[:remember_token])  if cookies[:remember_token]
    #@current_user ||= User.find_by_remember_token(cookies[:remember_token])  if cookies[:remember_token]
 # end
 # helper_method :current_user
  
  def current_company
    Company.find_by_subdomain! request.subdomain
  end
  helper_method :current_company
  
  def scope_current_company
    Company.current_id = current_company.id
    yield
  ensure
    Company.current_id = nil
  end


###############################################################################################




  #def not_found
  #raise ActionController::RoutingError.new('Not Found')
#end



#private

  def require_login
   if current_user == nil#User#?#find_by_id(1)
    	flash[:failure] = "You must log in to access that resource"
      redirect_to signin_path
    end
  end


#def current_user=(user)
#    @current_user = user
#  end

#  def current_user
#    if @current_user.nil?
#       @current_user = User.find_by_remember_token(cookies[:remember_token]) 
#    end
#    @current_user
#  end




  # around_filter :you_dont_have_bloody_clue

  #protected

  #def you_dont_have_bloody_clue
  #  klasses = [ActiveRecord::Base, ActiveRecord::Base.class]
  #  methods = ["session", "cookies", "params", "request"]

    #methods.each do |shenanigan|
    #  oops = instance_variable_get(:"@_#{shenanigan}") 

     # klasses.each do |klass|
     #   klass.send(:define_method, shenanigan, proc { oops })
     # end
    #end

   # yield

   # methods.each do |shenanigan|      
   #   klasses.each do |klass|
   #     klass.send :remove_method, shenanigan
   #   end
   # end

  end