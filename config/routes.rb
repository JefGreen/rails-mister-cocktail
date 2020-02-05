Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # cocktail new, create, index, show
  # doses new, create, destroy
  # ingredients new, create, destroy
  resources :cocktails, only: %i[new create index show] do
    resources :doses, only: %i[new create]
  end
  resources :doses, only: :destroy
end

# link to delete cocktail cocktail_path
