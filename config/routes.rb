Rails.application.routes.draw do
  get '/weather', controller: :weathers, action: :show
  resources :users;
  get '/forecast', controller: :forecasts, action: :show
end
