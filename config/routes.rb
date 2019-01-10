Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users
      resources :exercises
      resources :user_exercisess, only: [:index, :create, :destroy, :update]
      resources :challenges
      resources :user_challenges, only: [:index, :create, :destroy, :update]

      post "/auth", to: "sessions#create"
      post "/current_user", to: "sessions#show"
    end
  end
end
