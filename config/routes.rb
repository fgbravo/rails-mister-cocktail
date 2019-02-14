Rails.application.routes.draw do
  # root to: 'cocktails#index'
  # get 'cocktails', to: 'cocktails#index', as: 'cocktails'
  # get 'cocktails/:id', to: 'cocktails#show', as: 'cocktail'
  # get 'cocktails/new', to: 'cocktails#new', as: 'new_cocktail'
  # post 'cocktails/create', to: 'cocktails#create'
  # get 'cocktails/:id/edit', to: 'cocktails#edit', as: 'edit_cocktail'
  # patch 'cocktails/update/:id', to: 'cocktails#update'
  # delete 'cocktails/:id', to: 'cocktails#destroy'
  root to: 'cocktails#index'
  resources :cocktails do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
