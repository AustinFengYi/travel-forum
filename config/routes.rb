Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

root "travelresorts#index"

namespace :admin do
  resources :travelresorts
  root "travelresorts#index"
end

end
