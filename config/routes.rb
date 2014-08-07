Rails.application.routes.draw do
  
  get '/sessions/new' => 'sessions#new'
  get '/sessions/create' => 'sessions#create'
  get '/sessions/destroy' => 'sessions#destroy'
  # Routes for the Meet_event resource:
  # CREATE
  get '/new_meet_event' => 'meet_events#new'
  get '/create_meet_event' => 'meet_events#create'

  # READ
  get '/meet_events' => 'meet_events#index'
  get '/meet_events/:id' => 'meet_events#show'

  # UPDATE
  get '/meet_events/:id/edit' => 'meet_events#edit'
  get '/meet_events/:id/update' => 'meet_events#update'

  # DELETE
  get '/meet_events/:id/destroy' => 'meet_events#destroy'
  #------------------------------

  # Routes for the Swim_time resource:
  # CREATE
  get '/new_swim_time' => 'swim_times#new'
  get '/create_swim_time' => 'swim_times#create'

  # READ
  get '/swim_times' => 'swim_times#index'
  get '/swim_times/:id' => 'swim_times#show'

  # UPDATE
  get '/swim_times/:id/edit' => 'swim_times#edit'
  get '/swim_times/:id/update' => 'swim_times#update'

  # DELETE
  get '/swim_times/:id/destroy' => 'swim_times#destroy'
  #------------------------------

  # Routes for the Meet resource:
  # CREATE
  get '/new_meet' => 'meets#new'
  get '/create_meet' => 'meets#create'

  # READ
  get '/meets' => 'meets#index'
  get '/meets/:id' => 'meets#show'

  # UPDATE
  get '/meets/:id/edit' => 'meets#edit'
  get '/meets/:id/update' => 'meets#update'

  # DELETE
  get '/meets/:id/destroy' => 'meets#destroy'
  #------------------------------

  # Routes for the Attendance resource:
  # CREATE
  get '/new_attendance' => 'attendances#new'
  get '/create_attendance' => 'attendances#create'

  # READ
  get '/attendances' => 'attendances#index'
  get '/attendances/:id' => 'attendances#show'

  # UPDATE
  get '/attendances/:id/edit' => 'attendances#edit'
  get '/attendances/:id/update' => 'attendances#update'

  # DELETE
  get '/attendances/:id/destroy' => 'attendances#destroy'
  #------------------------------

  # Routes for the Swimmer resource:
  # CREATE
  get '/new_swimmer' => 'swimmers#new'
  get '/create_swimmer' => 'swimmers#create'

  # READ
  get '/swimmers' => 'swimmers#index'
  get '/swimmers/:id' => 'swimmers#show'

  # UPDATE
  get '/swimmers/:id/edit' => 'swimmers#edit'
  get '/swimmers/:id/update' => 'swimmers#update'

  # DELETE
  get '/swimmers/:id/destroy' => 'swimmers#destroy'
  #------------------------------

  get '/view/:id' => 'swimmers#view'
  get '/home' => 'welcome#home'
  get '/viewtimes/:id' => 'swimmers#viewtimes'
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
