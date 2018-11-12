Rails.application.routes.draw do
  
  devise_for :sellers, controllers: {
    sessions:       'sellers/sessions',
    registrations:  'sellers/registrations',
    passwords:      'sellers/passwords',
    confirmations:  'sellers/ confirmations',
    unlocks:        'sellers/unlocks'
  }
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
    confirmations:  'admins/confirmations',
    unlocks:        'admins/unlocks'
  }
  root to: "home#index"

  namespace :admin do 
    get 'dashboard' => "dashboard#dashboard"
    resources :users
    resources :sellers
    resources :book_categories
    resources :books
    resources :shops
  end

  get "/book-keyword" => "home#autocomplete"
  get "/book_search" => "books#book_search"
  
  resources :books
  resources :book_categories
  resources :news_letter_subscriptions, path: :subscription

end
