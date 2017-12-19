Rails.application.routes.draw do

  root 'pages#index'

  get 'users' => 'users#index'
  get 'register' => 'users#new'
  post 'users' => 'users#create'
  get 'profile/:id' => 'users#show', as: 'profile'

  get 'incidents' => 'incidents#index'
  get 'incidents/new' => 'incidents#new'
  get 'incidents/:id' => 'incidents#show', as: 'incident'
  patch 'incidents/:id' => 'incidents#update'
  get 'incidents/:id/edit' => 'incidents#edit', as: 'edit_incident'
  post 'incidents' => 'incidents#create'
  delete 'incidents/:id' => 'incidents#destroy', as: 'delete_incident'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
