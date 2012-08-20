class Spree::ProductTaxon < ActiveRecord::Base
  belongs_to :product
  belongs_to :taxon
  acts_as_list :scope=>:taxon
end
