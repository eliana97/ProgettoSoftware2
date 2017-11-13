Rails.application.routes.draw do
  resources :bills
  resources :activities
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'welcome#show'

end
