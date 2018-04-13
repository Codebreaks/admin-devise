Rails.application.routes.draw do
  
 
  
  # devise_for :bootstrap3s
  resources :test_questions
  resources :questions
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  # root 'users#index'
  # root :to => redirect('/test_questions')

  get 'sessions/new'
  get 'users/new'
  get 'questions/feedback'
  get 'questions/answer'
  
  root 'visitors#index'
  # get    '/help',    to: 'static_pages#help'
  # get    '/signup',  to: 'users#new'
  # get    '/login',   to: 'sessions#new'
  # post   '/login',   to: 'sessions#create'
  # delete '/logout',  to: 'sessions#destroy'
  devise_for :users
  resources :users
end
