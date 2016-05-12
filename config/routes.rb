Rails.application.routes.draw do
  resources :other_billing_in_agreements
  resources :software_in_agreements
  resources :device_in_agreements
  resources :agreements
  resources :softwares
  resources :devices
  resources :device_types
  resources :customers
  resources :restaurant_evaluations
  resources :restaurant_evaluation_types
  resources :contact_people
  get 'sessions/new'

  resources :users
  resources :restaurants
  resources :companies
  resources :restaurant_types
  resources :company_types
  resources :roles

  root 'companies#index'

  #USER LOGIN
  get "log_out" => "sessions#destroy", :as => "log_out"
  get "log_in" => "sessions#new", :as => "log_in"
  get "sign_up" => "users#new", :as => "sign_up"
  resources :sessions

  #LOCALE
  get '/change_locale/:locale', to: 'settings#change_locale', as: :change_locale

  #Separate contact people
  get "contact_person_restaurant" => "contact_people#new_restaurant_person"
  get "contact_person_company" => "contact_people#new_company_person"


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
