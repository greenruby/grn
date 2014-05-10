Grn::Application.routes.draw do

  #devise_for :users, controllers: { omniauth_callbacks: "omniauth_callbacks" }
  mount RailsI18nterface::Engine => "/translate", :as => "translate_engine" if Rails.env.development?

  get 'about' => "application#about"
  get 'index' => "application#index"
  namespace :api, defaults: { format: :json } do
    resources :editions, only: [ :index ]
    get 'grn-:title(.:format)', as: 'edition', to: 'editions#show'
    resources :tags, only: [ :index ]
  end
  root :to => "application#index"

end

# == Route Map (Updated 2014-02-04 22:32)
#
#           Prefix Verb URI Pattern               Controller#Action
# translate_engine      /translate                RailsI18nterface::Engine
#            about GET  /about(.:format)          application#about
#            index GET  /index(.:format)          application#index
#     api_editions GET  /api/editions(.:format)   api/editions#index {:format=>:json}
#      api_edition GET  /api/grn-:title(.:format) api/api/editions#show {:format=>:json}
#         api_tags GET  /api/tags(.:format)       api/tags#index {:format=>:json}
#             root GET  /                         application#index
#
# Routes for RailsI18nterface::Engine:
#             root GET  /                    rails_i18nterface/translate#index
#        translate PUT  /translate(.:format) rails_i18nterface/translate#update
# translate_reload GET  /reload(.:format)    rails_i18nterface/translate#reload
# translate_export GET  /export(.:format)    rails_i18nterface/translate#export
#                  POST /delete/*del         rails_i18nterface/translate#destroy
#
