Rails.application.routes.draw do
  get 'incidents' => 'incidents#index'
  root 'pages#index'
  get 'pages/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
