Rails.application.routes.draw do
  devise_for :clients
  devise_for :users
  get 'clients/index'

  get 'clients/new'

  get 'clients/create'

  get 'clients/edit'

  get 'clients/update'

  get 'clients/show'

  get 'clients/destroy'

  get 'packages/index'

  get 'packages/new'

  get 'packages/create'

  get 'packages/edit'

  get 'packages/update'

  get 'packages/show'

  get 'packages/destroy'

  get 'orders/index'

  get 'orders/new'

  get 'orders/create'

  get 'orders/edit'

  get 'orders/update'

  get 'orders/show'

  get 'orders/destroy'

  get 'couriers/index'

  get 'couriers/new'

  get 'couriers/create'

  get 'couriers/edit'

  get 'couriers/update'

  get 'couriers/show'

  get 'couriers/destroy'

  get 'dispathers_office/index'

  get 'dispathers_office/new'

  get 'dispathers_office/create'

  get 'dispathers_office/edit'

  get 'dispathers_office/update'

  get 'dispathers_office/show'

  get 'dispathers_office/destroy'

  get 'warehouses/index'

  get 'warehouses/new'

  get 'warehouses/create'

  get 'warehouses/edit'

  get 'warehouses/update'

  get 'warehouses/show'

  get 'warehouses/destory'

  get 'users/index'

  get 'users/new'

  get 'users/create'

  get 'users/edit'

  get 'users/update'

  get 'users/show'

  get 'users/destroy'

  get 'home/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  match ':controller(/:action(/:id))', :via => [:get, :post]


  # You can have the root of your site routed with "root"
  root 'home#index'

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
