Rails.application.routes.draw do
  resources :programs
  resources :program_groups
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
