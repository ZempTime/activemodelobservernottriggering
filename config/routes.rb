Rails.application.routes.draw do
  resources :hooplahs
  resources :vacation_spots

  root to: "vacation_spots#index"
end
