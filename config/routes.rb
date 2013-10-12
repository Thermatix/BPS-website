BarkingCameraClub::Application.routes.draw do


  # constraints(subdomain: /admin/) do
    namespace :admin do
      root to: "admin_panel#index"
    end
  # end

  root to: "front_page#index"
end
