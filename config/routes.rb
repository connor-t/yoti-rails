Rails.application.routes.draw do
  devise_for :users
  resources :store
  root 'pages#home'
end
