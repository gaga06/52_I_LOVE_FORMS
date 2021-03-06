Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#home'
  get '/home', to: 'static_pages#home', as: 'home'
  get '/user/new', to: 'user#new', as: 'new'
  post '/user/new', to: 'user#create', as: 'create'
  get '/user/error', to: 'user#error', as: 'error'
  get '/user/my', to: 'user#my', as: 'my'
  post '/user/my', to: 'static_pages#home', as: 'back'
end
