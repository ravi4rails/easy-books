Rails.application.routes.draw do
  
  devise_for :users, controllers: {
    sessions:       'users/sessions',
    registrations:  'users/registrations',
    passwords:      'users/passwords',
    confirmations:  'users/ confirmations',
    unlocks:        'users/unlocks'
  }

  devise_for :admins, controllers: {
    sessions:       'admins/sessions',
    registrations:  'admins/registrations',
    passwords:      'admins/passwords',
    confirmations:  'admins/ confirmations',
    unlocks:        'admins/unlocks'
  }
  root to: "home#index"

  namespace :admin do 
    resources :book_categories
    resources :books
  end

end
