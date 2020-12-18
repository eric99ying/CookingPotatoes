Rails.application.routes.draw do
    # Redirect root page to home page
    root :to => "static_pages#home"  

    # Routes for static pages like home page...
    get 'static_pages/home'

    # RESTFUL routes for recipes
    resources :recipes

    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
