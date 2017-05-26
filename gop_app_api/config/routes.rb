Rails.application.routes.draw do
  root 'welcome#index'
  resources :projects
  resources :features


  resources :users do
    collection do
      post '/login', to: 'users#login'
    end
  end

  resources :user do
    resource :projects
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
