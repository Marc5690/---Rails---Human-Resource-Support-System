require 'grape'

Mytwitter2::Application.routes.draw do
  #constraints :subdomain => 'apple' do
  mount App::API => "/api"
#end




  resources :users
  resources :absences
  resources :projects
  resources :time_and_attendances
  resources :tasks
  resources :private_messages
  resources :received_messages
  resources :received_messages
  resources :noticeboards
  resources :skills
  resources :skills_users
  resources :skills_tasks

  root to: 'static_pages#home'
  match '/signup',  to: 'users#new'
  match '/help',    to: 'static_pages#help'
  match '/about',   to: 'static_pages#about'
  match '/contact', to: 'static_pages#contact'
  # match '/menu', to: 'static_pages#menu'

  #Time and Attendance Routes for project manager
  match '/timemenu', to: 'time_and_attendances#menu'
  match '/addtime', to: 'time_and_attendances#select'
  match '/addtime2', to: 'time_and_attendances#add'
  match '/viewtime', to: 'time_and_attendances#editrec'
  match '/viewtime2', to: 'time_and_attendances#edit2'
  
  #Time and Attendance routes for employee
  #match '/times', to: 'time_and_attendances#emptime'
  match '/viewemptimes', to: 'time_and_attendances#emptime'
  match '/addemptimes', to: 'time_and_attendances#addemptime'

  #project routes
  match '/projects', to: 'projects#index'
  match '/projectsaddemployee', to: 'projects#new'
  match '/projectsadd', to: 'projects#editproject2'
  match '/projectsviewemployee', to: 'projects#addtask'
  match '/projectstest', to: 'projects#test'
  match '/projectsoverview', to: 'projects#display'

  match '/projectsearchemp', to: 'projects#choose_project'
  match '/projectforemp', to: 'projects#addemp'
  match '/projectempupdate', to: 'projects#add_user_to_task'
  match '/taskupdatechoose', to: 'projects#choose_task'

  match '/projectsaddemp', to: 'projects#addemp'
  match '/projectsupdate', to: 'projects#select_emp'#users#update'
  match '/projectstest2', to: 'projects#test2'

 # match '/projectsplanning', to: 'projects#task_by_month'
 # match '/projectsselect', to: 'projects#select_task_by_month'

  match '/projectsplanning', to: 'projects#planner_menu'

  match '/plan_task_display_month', to: 'projects#task_by_month'
  match '/plan_task_select_month', to: 'projects#select_task_by_month'

  match '/plan_project_display_month', to: 'projects#project_by_month'
  match '/plan_project_select_month', to: 'projects#select_project_by_month'

  match '/plan_task_display_year', to: 'projects#task_by_year'
  match '/plan_task_select_year', to: 'projects#select_task_by_year'

  match '/plan_project_display_year', to: 'projects#project_by_year'
  match '/plan_project_select_year', to: 'projects#select_project_by_year'
  #match '/projectsselect', to: 'projects#select_task_by_month'

  match '/projectschoose', to: 'projects#choose_project'
  match '/projectschooseedit', to: 'projects#choose_project_edit'
  
  #Task routes
  match '/projectstask', to: 'tasks#new'
  match '/taskupdate', to: 'tasks#edit_task'

  #Skills route
  match '/skills', to: 'skills#index'
  match '/skillsadd', to: 'skills#new'
  match '/taskskills', to: 'skills#task'
  match '/employeeskills', to: 'skills#employee' 
  match '/skillshow', to: 'skills#show' 
  match '/updateempskills', to: 'skills#updateemp'## 
  match '/updatetaskskills', to: 'skills#updatetask'

  #Private messages routes
  match '/private_messages', to: 'private_messages#index'
  match '/private_messages_create', to: 'private_messages#new'
  match '/private_messages_received', to: 'private_messages#display_received'
  match '/private_messages_sent', to: 'private_messages#display_sent'
  #match '/private_messages', to: 'private_messages#index'
  
  #Absence Record Routes
  match '/absences', to: 'absences#index'
  match '/absence_search_add_new', to: 'absences#new'
  match '/absence_search_add', to: 'absences#search_employees_absence_add'
  match '/absenceview', to: 'absences#display'
  match '/absencesearchview', to: 'absences#searchview'
  match '/absencesfill', to: 'absences#fill_absence'
  match '/fill', to: 'absences#fill'
  # match '/absencedisplay', to: 'absences#display'
  # match '/show', to: 'absences#show'

  #Employee Routes
  #resources :microposts, only: [:create, :destroy] 
  resources :sessions, only: [:new, :create, :destroy]
  match '/select_employee', to: 'users#select_employee'
  match '/edit_employee', to: 'users#edit_employee'

  match '/view_records', to: 'users#view_records'
  match '/view_time_records', to: 'users#view_time_records'
  match '/select_time_year', to: 'users#view_time_select_year'
  match '/select_absence_year', to: 'users#view_absence_select_year'
  match '/view_absence_records', to: 'users#view_absence_records'
  match '/signin',  to: 'sessions#new'                 
  match '/signout', to: 'sessions#destroy', via: :delete    
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
