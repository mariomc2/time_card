Rails.application.routes.draw do
  resources :tcards
  resources :staffs
  resources :contractees
  resources :contractors
  resources :recruiters
  resources :agencies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
