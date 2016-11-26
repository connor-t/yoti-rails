Rails.application.routes.draw do
  get 'yoti' => 'yoti#index',  as: 'yoti'
  get 'callback/yoti', to: 'yoti#profile'
  devise_for :users
  resources :store
  root 'pages#home'
end
