Grn::Application.routes.draw do

  devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }

  mount RailsI18nterface::Engine => "/translate", :as => "translate_engine" if Rails.env.development?

  get 'about' => "application#about"
  get 'index' => "application#index"

  root :to => "application#index"

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

# == Route Map (Updated 2014-02-04 12:35)
#
#                  Prefix Verb     URI Pattern                            Controller#Action
#        new_user_session GET      /users/sign_in(.:format)               devise/sessions#new
#            user_session POST     /users/sign_in(.:format)               devise/sessions#create
#    destroy_user_session DELETE   /users/sign_out(.:format)              devise/sessions#destroy
# user_omniauth_authorize GET|POST /users/auth/:provider(.:format)        omniauth_callbacks#passthru {:provider=>/github/}
#  user_omniauth_callback GET|POST /users/auth/:action/callback(.:format) omniauth_callbacks#(?-mix:github)
#        translate_engine          /translate                             RailsI18nterface::Engine
#                   about GET      /about(.:format)                       application#about
#                   index GET      /index(.:format)                       application#index
#                    root GET      /                                      application#index
#
# Routes for RailsI18nterface::Engine:
#             root GET  /                    rails_i18nterface/translate#index
#        translate PUT  /translate(.:format) rails_i18nterface/translate#update
# translate_reload GET  /reload(.:format)    rails_i18nterface/translate#reload
# translate_export GET  /export(.:format)    rails_i18nterface/translate#export
#                  POST /delete/*del         rails_i18nterface/translate#destroy
#
