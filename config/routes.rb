Rails.application.routes.draw do

  resources :books do
  end

  root to: "books#index"


  # get 'books/index'
  # get 'books/show'
  # get 'books/new'
  # get 'books/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
