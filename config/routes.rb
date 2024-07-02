Rails.application.routes.draw do
  require 'sidekiq/web'

  mount Sidekiq::Web => '/sidekiq'
  mount ActionCable.server => '/cable'

  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  root to: "home#index"
end
