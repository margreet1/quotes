Rails.application.routes.draw do
  get 'quotes/import'
  get 'subscribers/index'
  get 'welcome/index'
  root to: "welcome#index"

  resources :quotes, only: [:new, :index, :create, :show]
  resources :subscribers
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
