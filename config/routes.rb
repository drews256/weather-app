Rails.application.routes.draw do
  get '/home', controller: :homes, action: :show
  get '/forecast', controller: :forecasts, action: :show

  resources :users
end
