class SpreeProductSortHooks < Spree::ThemeSupport::HookListener
  insert_after :admin_product_sub_tabs do
    %(<%= tab(:label => 'product_sorting', :route => 'positions_admin_product_taxons') %>)
  end
end
