Rails.application.routes.draw do
  root 'practice#index'
  
  get '/practice', to: 'practice#show'
  post '/practice/check', to: 'practice#check_answer'
  
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  
  get '/register', to: 'users#new'
  post '/register', to: 'users#create'
  
  get '/stats', to: 'users#stats'
  get '/letters', to: 'letters#index'
end
