Rails.application.routes.draw do
  resources :portfolios
  resources :blogs

  # localhost:3000/about
  get 'about-me', to: 'pages#about'
  # localhost:3000/contact
  get 'contact', to: 'pages#contact'

  # localhost:3000/
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
