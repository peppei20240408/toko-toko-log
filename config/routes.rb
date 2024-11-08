Rails.application.routes.draw do
  get 'toko_logs/index'
  devise_for :users

  root to: "toko_logs#index"
end