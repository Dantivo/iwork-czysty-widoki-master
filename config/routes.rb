Rails.application.routes.draw do
  get 'registrations_controller/sign_up_params'

#jaszczomptutajELO XD
  
  get 'registrations_controller/account_update_params'

  devise_for :users, controllers: {registrations: 'registrations'}
  # devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  resources :iwork
  get 'iwork/index'
  match 'index', to: 'iwork#index', via: [:post, :get]
  get 'iwork/formularz'
  get 'iwork/view'
  get 'iwork/oferty'
  match 'oferty', to: 'iwork#oferty', via: [:post, :get]
  match 'formularz', to: 'iwork#formularz', via: [:post, :get]
  match 'view', to: 'iwork#view', via: [:post, :get]
  match 'iwork/utworz' => 'iwork#utworz', via: [:get, :post]
  match 'iwork/pokaz' => 'iwork#pokaz', via: [:get, :post]
  match 'profil', to: 'iwork#profil', via: [:post, :get]
  # You can have the root of your site routed with "root"

  root 'iwork#index'

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
