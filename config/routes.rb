BarkingCameraClub::Application.routes.draw do
  get '/about_us', to: 'about_us#index'
  get '/gallery', to: 'gallery#index'
  get '/news', to: 'news#index'
  get '/welcome', to: 'front_page#index'
  get '/members_login', to: 'members#index', as: 'login'

  # constraints(subdomain: /admin/) do
    namespace :admin do
      get "/:selection", to: "admin_panel#index"
    end
  # end



  resource :sessions, only: %w(new create destroy)
  resources :members

  root to: "front_page#index"
end
