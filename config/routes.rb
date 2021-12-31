Rails.application.routes.draw do
  resources :cells
  post 'authenticate', to: 'authentication#authenticate'
end

