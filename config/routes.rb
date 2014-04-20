Rails.application.routes.draw do
  get 'availabilities/show', as: :show_availabilities

  get 'availabilities/update', as: :update_availabilities

  resources :participatings
  post "participatings/create_or_update" => 'participatings#create_or_update', as: :participating_create_or_update

  resources :leaders

  resources :announcements

  resources :character_specialisations

  resources :characters

  resources :pickups

  resources :requireds

  resources :roles

  resources :event_templates

  resources :events

  resources :role_types

  get 'guild/index'

  get 'guild/about', as: :about

  put 'guild/promote_user/:uid' => 'guild#promote_user' , as: :user_promote_admin
  put 'guild/demote_user/:uid'  => 'guild#demote_user', as: :user_demote_admin
  put 'guild/remove_user/:uid'  => 'guild#remove_user', as: :user_delete

  devise_for :users
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'guild#index'

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
