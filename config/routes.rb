Rails.application.routes.draw do
  get 'yoti' => 'yoti#index',  as: 'yoti'
  get 'yoti/profile', to: 'yoti#profile'
  devise_for :users
  resources :store
  root 'pages#home'
end
