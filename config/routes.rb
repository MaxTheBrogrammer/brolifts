Rails.application.routes.draw do
  resources :personal_records
  resources :lift_trackers
  resources :exercises
  resources :workout_days
  resources :workouts
  resources :programs
  resources :program_groups

  get "/login", to: redirect("/auth/google_oauth2")
  get "/logout", to: "sessions#destroy"
  get "/auth/google_oauth2/callback", to: "sessions#create"
  get 'auth/failure', to: redirect('/')
  resource :session, only: [:create, :destroy]

  root to: 'home#index'
end
