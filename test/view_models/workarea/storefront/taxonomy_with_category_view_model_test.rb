require "test_helper"

module Workarea
  module Storefront
    class ContentBlocks::TaxonomyWithCategoryViewModelTest < Workarea::SystemTest
      def test_locals_returns_additional_local_data_keys
        taxon = create_taxon
        products = Array.new(3) { |i| create_product(name: "Test Product #{i}") }
        category = create_category(
          product_ids: [
            products.third.id,
            products.first.id,
            products.second.id
          ]
        )

        BulkIndexProducts.perform_by_models(products)

        content = create_content
        block = content.blocks.create!(
          area: "body",
          type_id: "taxonomy_with_products",
          data: {
            start: taxon.id.to_s,
            category: category.id
          }
        )

        view_model = Storefront::ContentBlocks::TaxonomyWithCategoryViewModel.new(block)
        assert_equal(taxon, view_model.starting_taxon)
        assert_equal(view_model.products.map(&:name), ["Test Product 2", "Test Product 0", "Test Product 1"])
      end
    end
  end
end
