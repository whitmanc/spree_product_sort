Deface::Override.new(:virtual_path => "spree/admin/shared/_product_sub_menu",
                     :name => "admin_product_sort",
                     :insert_bottom => "[data-hook='admin_product_sub_tabs']",
                     :text => '<li><%= link_to t("product_sorting"), admin_product_sort_url %></li>',
                     :disabled => false)
                  
