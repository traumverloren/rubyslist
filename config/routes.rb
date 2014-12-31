Rails.application.routes.draw do

  resources :categories do
    resources :subcategories
  end

  root 'categories#index'

  get 'help' => "pages#help"
  get 'scams' => "pages#scams"
  get 'tips' => "pages#tips"
  get 'terms' => "pages#terms"
  get 'privacy' => "pages#privacy"
  get 'about' => "pages#about"
  get 'contact' => "pages#contact"

end
