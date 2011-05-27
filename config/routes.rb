Rails.application.routes.draw do
  
  namespace :admin do
    match 'taxons/reorder_products/:id' => 'taxons#reorder_products', :via => :put
       
    resources :product_taxons do
      member do
        get :select
      end
      collection do
        get :available
        get :selected
      end
    end
      
  end
end
