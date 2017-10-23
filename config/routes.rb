Rails.application.routes.draw do
  namespace :admin do
    resources :contents
  end

  root to: 'pages#home'
end
