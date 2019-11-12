module Workarea
  module Storefront
    module ContentBlocks
      class TaxonomyWithProductsViewModel < ContentBlockViewModel
        include TaxonLookup

        def products
          return [] unless data["products"].present?

          @products ||= Catalog::Product
                          .find_ordered_for_display(data["products"])
                          .map { |product| ProductViewModel.wrap(product) }
        end

        def product_width_class
          "grid__cell--#{100 / products.count}-at-medium"
        end
      end
    end
  end
end
