Rails.application.routes.draw do

  resources :categories do
    resources :subcategories
  end

  resources :listings do
    collection do
      get 'search'
    end
  end

  root 'categories#index'

  get 'help' => "pages#help"
  get 'scams' => "pages#scams"
  get 'tips' => "pages#tips"
  get 'terms' => "pages#terms"
  get 'privacy' => "pages#privacy"
  get 'about' => "pages#about"
  get 'contact' => "pages#contact"
  post 'subcategories/find_by_category' => 'subcategories#find_by_category'
end
