Rails.application.routes.draw do
  resources :goals do
    resources :todos, only: [:new, :create]
    member do
      get :todos, to: 'todos#index'
    end
  end

  # PUT/PATCH /todos/:id
  resources :todos, only: [:update]

  resources :boards
  resources :photos do
    resources :pins, only: [:create]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "goals#index"
end
