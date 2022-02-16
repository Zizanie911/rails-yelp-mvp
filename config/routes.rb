Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  Rails.application.routes.draw do
    resources :restaurants, only: [:new, :create, :show, :index] do
      resources :reviews, only: [ :new, :create ]
    end
  end
end
