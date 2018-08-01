Rails.application.routes.draw do
  #get 'messages/message_text:text'

  get 'home/index'

  devise_for :users
  resources :users
  resources :homes
  resources :person2s
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :persons
 #get '/person', to: 'person#index'
  root to: "homes#index"
  get 'homes/savemessage'
end
