Rails.application.routes.draw do
  devise_for :users
  get '/weather', controller: :weathers, action: :show
  resources :users;
  get '/forecast', controller: :forecasts, action: :show
end
