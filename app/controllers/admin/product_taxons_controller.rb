class Admin::ProductTaxonsController < Admin::ResourceController
  
  def index
    #List of taxons, beginnning with a virtual taxons for Home, and then all taxons with pts
    @taxons = []
    @taxons << Taxon.new({:name => 'Home'})
    @taxons |= Taxon.joins(:product_taxons).order(:name)
  end

end
