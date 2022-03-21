Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get '/faq', to: 'faq#index'
  get '/home', to: 'home#index'
  get '/about', to: 'about#index'
end
