Rails.application.routes.draw do
  # pages_controller
  root "pages#show", act: "home"
  get "/pages/:act" => "pages#show"

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  namespace :api do
    namespace :v1 do
      resources :shorten, only: [:index, :show, :create]
    end
  end

  get "/:alias" => "api/v1/shorten#show"
end
