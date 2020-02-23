Rails.application.routes.draw do
  resources :lesson_plans
  devise_for :educators, path: 'educators'
  devise_for :admins, path: 'admins'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
