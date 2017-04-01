Rails.application.routes.draw do


  devise_for :users, controllers: {sessions: 'users/sessions'}
  devise_scope :user do
    get 'sign_in', to: 'users/sessions#new'
    get 'sign_up', to: 'users/registrations#new'
    get 'sign_out', to: 'users/sessions#destroy'
  end
  # devise_for :users, skip: [:sessions]
  # as :user do
  #   get 'signin', to: 'devise/sessions#new', as: :new_user_session
  #   post 'signin', to: 'devise/sessions#create', as: :user_session
  #   match 'signout', to: 'devise/sessions#destroy', as: :destroy_user_session, via: Devise.mappings[:user].sign_out_via
  # end

  #get 'admin#chart'
  # You can have the root of your site routed with "root"

  root to: 'welcomes#index'
  get 'welcome/search' => 'welcomes#search'
  #devise_for :users

  resources :charts do
    resource :tickers
  end

  resources :users do
    resources :staffs do
    member do
      get 'display' => 'staffs/search'
      get 'search'
    end
    resources :skills
    resources :trainings
    resources :proffessionals
    resources :academics
    resources :schools
    resources :specializations
  end
  end


  resources :admin
  resources :queries
  resources :set_sections
  resources :set_departments
  resources :set_stations
  resources :set_specializations
  resources :set_qualifications
  resources :set_ranks
  resources :set_genders
  resources :set_schools
  resources :set_courses
  resources :set_grades


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
