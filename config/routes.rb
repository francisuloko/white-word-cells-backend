Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :cells

      post 'authenticate', to: 'authentication#authenticate'
      post 'signup', to: 'registrations#create'
    end
  end
end
