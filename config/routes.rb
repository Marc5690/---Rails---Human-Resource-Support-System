Mytwitter2::Application.routes.draw do
  
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
  #Evertime a form has an error, check the resources

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
 match '/projectempupdate', to: 'users#update'

  match '/projectsaddemp', to: 'projects#addemp'
  match '/projectsupdate', to: 'projects#select_emp'#users#update'
  match '/projectstest2', to: 'projects#test2'
  match '/projectsplanning', to: 'projects#month'
  match '/projectsselect', to: 'projects#select_project'
  match '/projectschoose', to: 'projects#choose_project'
  match '/projectschooseedit', to: 'projects#choose_project_edit'
  
  #Task routes
  match '/projectstask', to: 'tasks#new'
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
  match '/absenceadd', to: 'absences#add'
  match '/absenceview', to: 'absences#display'
  match '/absencesearchadd', to: 'absences#searchadd'
  match '/absencesearchview', to: 'absences#searchview'
  # match '/absencedisplay', to: 'absences#display'
  # match '/show', to: 'absences#show'

  #Employee Routes
  resources :microposts, only: [:create, :destroy] 
  resources :sessions, only: [:new, :create, :destroy]  # NEW LINE
  match '/signin',  to: 'sessions#new'                  # NEW LINE
  match '/signout', to: 'sessions#destroy', via: :delete    # NEW LINE
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
