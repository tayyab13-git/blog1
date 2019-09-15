Rails.application.routes.draw do
  get 'welcome/index'
  get 'users/signup' to: 'users#signup'
    resources :articles do
      resources :comments
    end
  root 'welcome#index'
end
