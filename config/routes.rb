Rails.application.routes.draw do
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  
  resources :users, only: [:create, :show, :index]
  scope '/api/v1' do
    resources :books
  end 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
