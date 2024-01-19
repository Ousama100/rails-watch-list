Rails.application.routes.draw do
  get 'lists/index'
  get 'lists/shownew'
  get 'lists/create'
    resources :lists, only: [:index, :show, :new, :create] do
    resources :movies, only: [:index, :show, :new, :create, :destroy,]
    resources :bookmarks, only: [:new, :create, :destroy]
  end
end
