Rails.application.routes.draw do
  resources :shareprojects
  resources :linktables
  resources :links
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

  resources :project do
    puts "say something here"
    resource :features
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
