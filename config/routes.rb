Rails.application.routes.draw do
  
  namespace :admin do
		# callback for jQuery sort action
    match 'taxons/reorder_products/:id' => 'taxons#reorder_products', :via => :put
       
    resources :product_taxons do
      collection do
        get :positions
      end
    end
      
  end
end
