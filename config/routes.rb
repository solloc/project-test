Rails.application.routes.draw do
  get 'incidents' => 'incidents#index'
  get 'incidents/new' => 'incidents#new'
  get 'incidents/:id' => 'incidents#show', as: 'incident'
  patch 'incidents/:id' => 'incidents#update'
  get 'incidents/:id/edit' => 'incidents#edit', as: 'edit_incident'
  post 'incidents' => 'incidents#create'
  root 'pages#index'
  get 'pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
