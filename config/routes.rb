Rails.application.routes.draw do

  resources :pages
  resources :foods, only: [:index, :show]
  resources :restaurants, only: [:index, :show]
  resources :search
  get '/about' => 'pages#about'
  get '/home' => 'pages#home'

  get 'foods/:id', to: 'foods#show', as: 'selected_food'
  get 'search_results', to: 'search#results', as: 'search_results'
  root 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
