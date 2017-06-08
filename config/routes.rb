Rails.application.routes.draw do
  # pages_controller
  root "pages#show", act: "home"
  get "/pages/:act" => "pages#show"
end
