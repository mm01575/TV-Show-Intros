Rails.application.routes.draw do
  devise_for :users
  resources :videos

  root 'videos#index'

  get 'about', to: 'videos#about'

end
