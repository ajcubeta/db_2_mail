Db2Mail::Application.routes.draw do
  # devise_for :users, :path_names => { :sign_in => 'login', :sign_out => 'logout' }

  resources :users
  resources :admins
  resources :templates

  root :to => "home#index"
end