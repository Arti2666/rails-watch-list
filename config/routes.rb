Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/movies", to: 'movies#index'
  root to: 'lists#index'
  delete "/list/:id", to: 'lists#delete', as: 'listdelete'
  resources :lists, only: [:index, :create, :show, :new,] do
    resources :bookmarks, only: [:index, :new, :create]
  end

  resources :bookmarks, only: [:destroy]
end
