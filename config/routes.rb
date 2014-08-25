Rails.application.routes.draw do
  root "root#index"
  resources :movies

end
