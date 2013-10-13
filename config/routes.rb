BarkingCameraClub::Application.routes.draw do


  # constraints(subdomain: /admin/) do
    namespace :admin do
      root to: "admin_panel#index"
      get "/:selection", to: "admin_panel#index"
    end
  # end

  get "/:selection", to: "front_page#index"

  root to: "front_page#index"
end
