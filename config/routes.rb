Rails.application.routes.draw do
    # Redirect root page to home page
    root :to => "static_pages#home"  

    # Routes for static pages like home page...
    get 'static_pages/home'

    # RESTFUL routes for recipes
    resources :recipes

    # # RESTFUL route for users
    devise_scope :user do
        get 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
    end

    # Routes for omniauth
    devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth' }

    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
