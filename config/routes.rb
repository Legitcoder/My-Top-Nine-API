Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    resources :users do
      resources :favorites
    end
    resources :tokens, only: [:create]
    resources :categories do
      resources :items
    end
    resources :items
  end
end
