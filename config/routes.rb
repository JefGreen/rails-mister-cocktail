Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # cocktail new, create, index, show
  # doses new, create, destroy
  # ingredients new, create, destroy
  resources :cocktails, only: %i[new create index show] do
    resources :doses, only: %i[new create destroy]
  end

  resources :ingredients, only: %i[new create index]
end
