Rails.application.routes.draw do
  get 'toko_logs/index'
  devise_for :users

  root to: "toko_logs#index"
  resources :toko_logs, only: [:index, :new, :create]

end