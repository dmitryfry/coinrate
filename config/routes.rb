Rails.application.routes.draw do
  root 'index#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'history' => 'history#index'
  get '*page' => 'pages#show'
end
