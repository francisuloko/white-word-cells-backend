Rails.application.routes.draw do
  resources :cells
  post 'authenticate', to: 'authentication#authenticate'
  post 'signup', to: 'registrations#create'
end
