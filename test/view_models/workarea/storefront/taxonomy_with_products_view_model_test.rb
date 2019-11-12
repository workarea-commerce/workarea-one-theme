require "test_helper"

module Workarea
  module Storefront
    class ContentBlocks::TaxonomyWithProductsViewModelTest < Workarea::SystemTest
      def test_locals_returns_additional_local_data_keys
        taxon = create_taxon

        content = create_content
        block = content.blocks.create!(
          area: "body",
          type_id: "taxonomy_with_products",
          data: {
            start: taxon.id.to_s,
            products: [
              create_product(name: "Test Product 1").id,
              create_product(name: "Test Product 2").id
            ]
          }
        )

        view_model = Storefront::ContentBlocks::TaxonomyWithProductsViewModel.new(block)
        assert_equal(taxon, view_model.starting_taxon)
        assert_equal(view_model.products.map(&:name), ["Test Product 1", "Test Product 2"])
      end
    end
  end
end
