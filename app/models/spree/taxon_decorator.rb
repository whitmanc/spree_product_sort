Spree::Taxon.class_eval do
  has_many :product_taxons,:order=>"#{Spree::ProductTaxon.quoted_table_name}.position"
  has_many :products, :through=>:product_taxons, :order=>"#{Spree::ProductTaxon.quoted_table_name}.position"
end
