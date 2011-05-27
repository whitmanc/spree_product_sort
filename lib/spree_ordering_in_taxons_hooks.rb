class SpreeOrderingInTaxonsHooks < Spree::ThemeSupport::HookListener
  insert_after :admin_product_sub_tabs do
    %(<%= tab(:label => 'Product Sorting', :route => 'admin_product_taxons') %>)
  end
end