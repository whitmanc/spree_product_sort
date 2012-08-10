Spree::Product.class_eval do
  has_many :product_taxons
  has_many :taxons, :through=>:product_taxons

  after_create :assign_to_main_index_taxon

  def self.ordered(taxon_id)
    includes(:product_taxons)
    .where("#{Spree::ProductTaxon.quoted_table_name}.taxon_id = #{taxon_id}")
    .order("#{Spree::ProductTaxon.quoted_table_name}.taxon_id, 
	   #{Spree::ProductTaxon.quoted_table_name}.position")
  end

  def in_taxon?(taxon)
    case taxon
      when String
        self.taxons.map{|t| [t.name.downcase,t.permalink.downcase]}.flatten.include?(taxon.strip.downcase)
      when Integer
        self.taxons.map{|t| t.id}.include?(taxon)
      when Taxon
        self.taxons.include?(taxon)
      else
        false
    end
  end

  def assign_to_main_index_taxon
    Spree::ProductTaxon.create(:product_id => self.id, :taxon_id => 0)
  end

end