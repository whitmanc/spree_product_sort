class Spree::ProductTaxon < ActiveRecord::Base
  belongs_to :product
  belongs_to :taxon
  default_scope :order=>"#{self.quoted_table_name}.position"
  acts_as_list :scope=>:taxon
end
