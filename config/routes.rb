Rails.application.routes.draw do
  
  namespace :admin do
    match 'taxons/reorder_products/:id' => 'taxons#reorder_products', :via => :put
       
    resources :product_taxons do #rename to avoid conflict with products/taxons/
      member do
        get :select
      end
      collection do
        get :positions
      end
    end
      
  end
end
