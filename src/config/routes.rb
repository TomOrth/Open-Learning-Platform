Rails.application.routes.draw do
  #resources :dmcas
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
  resources :admins
  post "educators/:id/verify", to: "educators#verify"
  root to: "home#index"
end
