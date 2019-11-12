module Workarea
  class ThemeHomePageSeeds
    include Workarea::Content::AssetLookup

    def perform
      puts "Adding theme home page content..."

      content = Content.for("Home Page")

      content.blocks.clear

      content.blocks.build(
        type: "hero_slider",
        data: {
          image_1: find_asset_id_by_file_name("960x470_light.png").call,
          alt_text_1: "Image Alt",
          heading_1: "First slide heading",
          sub_heading_1: "Call to action!",
          url_1: "http://example.com",
          image_2: find_asset_id_by_file_name("960x470_light.png").call,
          alt_text_2: "Image Alt 2",
          heading_2: "Second slide heading",
          sub_heading_2: "Some more text here...",
          url_2: "http://example2.com",
          show_dots: false,
          show_arrows: true,
          partial_slide_preview: false,
          auto_rotate: true,
          auto_rotate_speed: 3,
          pause_on_hover: true,
          stop_on_interaction: true
        }
      )

      content.blocks.build(
        type: "category_summary",
        data: {
          image: find_asset_id_by_file_name("100x100.png").call,
          image_alt: "Description of the image",
          category: Workarea::Catalog::Category.sample.try(:id).try(:to_s)
        }
      )

      product_ids = Array.new(5) { Workarea::Catalog::Product.sample.try(:id) }
      content.blocks.build(
        type: "product_list",
        data: {
          title: "Featured Products",
          products: product_ids.compact,
          auto_rotate: false,
          auto_rotate_speed: 10,
          show_dots: false
        }
      )
      content.save!
    end
  end
end
