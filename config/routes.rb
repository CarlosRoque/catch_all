Rails.application.routes.draw do
  resources :request_logs

  root 'request_logs#index'

  match '*path', to: 'request_logs#create_log', via: :all
end
