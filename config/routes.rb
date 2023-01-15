Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  resources :posts do
    resources :comments, only: :create
   end

   resource :user, except: [:new, :create, :destroy]

end
