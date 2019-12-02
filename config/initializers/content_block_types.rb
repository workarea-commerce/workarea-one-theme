Workarea.define_content_block_types do
  block_type "Taxonomy With Products" do
    tags %w(taxonomy)
    description "Insert a branch of the site Taxonomy with products"
    view_model "Workarea::Storefront::ContentBlocks::TaxonomyWithProductsViewModel"

    fieldset "Taxonomy" do
      field "Header", :string
      field "Show Starting Taxon", :boolean, default: true
      field "Start", :taxonomy, required: true, default: -> { Workarea::Navigation::Taxon.first.try(:id).try(:to_s) }
    end

    field "Products", :products, default: (lambda do
      result = Array.new(3) { Workarea::Catalog::Product.sample.try(:id) }
      result.compact
    end)
  end

  block_type "Taxonomy With Category Summary" do
    tags %w(taxonomy)
    description "Insert a branch of the site Taxonomy with automated products"
    view_model "Workarea::Storefront::ContentBlocks::TaxonomyWithCategoryViewModel"

    fieldset "Taxonomy" do
      field "Header", :string
      field "Show Starting Taxon", :boolean, default: true
      field "Start", :taxonomy, required: true, default: -> { Workarea::Navigation::Taxon.first.try(:id).try(:to_s) }
    end

    field "Category", :category, default: -> { Workarea::Catalog::Category.sample.try(:id).try(:to_s) }
  end

  block_type "Category Summary" do
    description "A category name and its first few products."
    view_model "Workarea::Storefront::ContentBlocks::CategorySummaryViewModel"

    fieldset "Content" do
      field "Heading", :string, default: "Category Name"
      field "Image", :asset, file_types: "image", default: find_asset_id_by_file_name("100x100.png")
      field "Image Alt", :string
      field "Content Link", :url, default: "/"
      field "Link Text", :string, default: "View all"
    end

    field "Category", :category, default: -> { Workarea::Catalog::Category.sample.try(:id).try(:to_s) }
  end

  block_type "Product List" do
    description "A custom list of products."

    field "Title", :string, default: "Featured"
    field "Products", :products, default: (lambda do
      result = Array.new(5) { Workarea::Catalog::Product.sample.try(:id) }
      result.compact
    end)

    fieldset "Slider Options" do
      field "Show Dots", :boolean, default: false
      field "Show Arrows", :boolean, default: true
      field "Partial Slide Preview", :boolean, default: false
      field "Auto Rotate", :boolean, default: false
      field "Auto Rotate Speed", :range, default: 4, min: 3, max: 6, step: 0.5, note: "In seconds"
      field "Pause on Hover", :boolean, default: true
      field "Stop On Interaction", :boolean, default: true
    end
  end

  block_type "Hero Slider" do
    description "Adds a slider with images or text to your pages"
    view_model "Workarea::Storefront::ContentBlocks::HeroSliderBlockViewModel"

    series 5 do
      field "Image", :asset, file_types: "image", default: find_asset_id_by_file_name("960x470_light.png")
      field "Alt Text", :string
      field "Heading", :string, default: "Summer Essentials"
      field "Sub Heading", :string, default: "Shop now!"
      field "URL", :url, default: "/"
    end

    fieldset "Options" do
      field "Full Bleed", :boolean, default: false
      field "Show Dots", :boolean, default: false
      field "Show Arrows", :boolean, default: true
      field "Partial Slide Preview", :boolean, default: false
      field "Auto Rotate", :boolean, default: true
      field "Auto Rotate Speed", :range, default: 4, min: 3, max: 6, step: 0.5, note: "In seconds"
      field "Pause on Hover", :boolean, default: true
      field "Stop On Interaction", :boolean, default: true
    end
  end
end
