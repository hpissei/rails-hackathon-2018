Rails.application.routes.draw do
  resources :person2s
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :persons
 #get '/person', to: 'person#index'
end
