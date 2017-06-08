Rails.application.routes.draw do
  # pages_controller
  root "pages#show", act: "home"
  get "/pages/:act" => "pages#show"

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
end
