Rails.application.routes.draw do

  namespace :api, :defaults => {:format => :json} do
    namespace :v1 do
      resources :cells

      post 'authenticate', to: 'authentication#authenticate'
      post 'signup', to: 'registrations#create'
    end
  end
end
