Rails.application.routes.draw do
  root to: 'hello_world#index'
  get 'hello_world/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
