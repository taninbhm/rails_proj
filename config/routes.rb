Rails.application.routes.draw do
  resources :foods, only: [:index]
  get '/about' => 'pages#about'
  get '/foods' => 'pages#food'
  get 'search_results', to: 'search#results', as: 'search_results'
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
