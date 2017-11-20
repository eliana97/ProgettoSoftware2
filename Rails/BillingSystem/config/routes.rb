Rails.application.routes.draw do
  resources :bills
  resources :activities
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#show'

  #static pages
  get '/about', to: 'static_pages#about'
  get '/contacts', to: 'static_pages#contacts'
  get '/help', to: 'static_pages#help'
end
