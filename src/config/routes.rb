Rails.application.routes.draw do
  resources :lesson_plans 
  devise_for :educators, path: 'educators', controllers: {
    passwords: 'educators/passwords',
    registrations: 'educators/registrations',
    sessions: 'educators/sessions'
  }
  devise_for :admins, path: 'admins', controllers: {
    passwords: 'admins/passwords',
    registrations: 'admins/registrations',
    sessions: 'admins/sessions'
  }

  resources :educators
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  namespace :dashboard do
     resources :admins
  end
end
