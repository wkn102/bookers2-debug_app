Rails.application.routes.draw do

   root 'homes#top'
   devise_for :users
   get 'home/about' => 'homes#about'

  resources :users,only: [:show,:index,:edit,:update]
  resources :books, only: [:new, :create, :index, :show, :destroy, :edit, :update] do
      resources :book_comments, only: [:create, :destroy]
      resource :favorites, only: [:create, :destroy]
  end

end
