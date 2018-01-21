Rails.application.routes.draw do

  root "welcome#index"

  post 'current_activioty/start'
  post 'current_activioty/stop'

  resources :activity_logs
  resources :activities
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
