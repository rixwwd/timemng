Rails.application.routes.draw do

  devise_for :users
  root "welcome#index"

  get  'current_activity', to: "current_activity#index"
  post 'current_activity/start'
  post 'current_activity/stop'

  resources :activity_logs
  resources :activities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
