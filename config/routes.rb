Rails.application.routes.draw do
  resources :item_taxes
  resources :items do
    collection do
      post 'calculate_total_amount'
    end
  end
  resources :item_categories

  root "application#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
