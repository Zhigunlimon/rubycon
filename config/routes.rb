Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  namespace :admin do
    resources :contents
  end
  resources :emails, only: [] do
    collection do
      post :contact_us
    end
  end

  root to: 'pages#home'
end
