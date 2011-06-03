class Admin::ProductTaxonsController < Admin::ResourceController
  
  def positions
    #List of taxons, beginnning with a virtual taxons for Home, and then all taxons with pts
    @taxons = []
    @taxons << Taxon.new({:name => t('main_index')})
    @taxons |= Taxon.joins(:product_taxons).order(:name)
  end

end
