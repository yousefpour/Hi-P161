Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get "/articles", to: "articles#index"
end

Rails.application.routes.draw do
  root "articles#index"

  get "/articles", to: "articles#index"
end
