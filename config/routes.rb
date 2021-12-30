Rails.application.routes.draw do
  resources :user do
    resources :cells
  end
  post 'authenticate', to: 'authentication#authenticate'
end
