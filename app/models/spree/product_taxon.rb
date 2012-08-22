class Spree::ProductTaxon < ActiveRecord::Base
  belongs_to :product
  belongs_to :taxon
  acts_as_list :scope=>:taxon
  
  attr_accessible :product_id, :taxon_id
end
