Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout',  sign_up: 'register' }

  resources :portfolios, except: [:show] do
    put :sort, on: :collection
  end

  get  'portfolios/angular'
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  get 'tech-news', to: 'pages#tech_news'

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
