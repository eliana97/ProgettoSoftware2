Rails.application.routes.draw do
  resources :bills do
    collection do
      delete 'destroy_multiple'
    end
  end

  resources :activities do
    collection do
      delete 'destroy_multiple'
    end
  end

  resources :customers do
    collection do
      delete 'destroy_multiple'
    end
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#home'

  #static pages
  get '/about', to: 'static_pages#about'
  get '/features', to: 'static_pages#features'
  get '/help', to: 'static_pages#help'
  get '/dashboard', to: 'static_pages#dashboard'
end
