Rails.application.routes.draw do
  devise_for :users
  resources :portfolios, except: [:show]

  get  'portfolios/angular'

  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'

  # localhost:3000/about
  get 'about-me', to: 'pages#about'
  # localhost:3000/contact
  get 'contact', to: 'pages#contact'

  resources :blogs

  resources :blogs do
    member do
      get :toggle_status
    end
  end

  # localhost:3000/
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
