module Workarea
  class BrowseNavigationSeeds
    def perform
      puts "Adding Primary Navigation content..."

      browsing_pages = Content::Page.tagged_with("browsing")
      categories = Catalog::Category.all.to_a

      browsing_pages.each do |page|
        taxon = Navigation::Taxon.root.children.create!(navigable: page)
        menu = Navigation::Menu.create!(taxon: taxon)

        next if categories.blank?

        content = Content.for(menu)
        content.blocks.create!(
          type: "taxonomy_with_category_summary",
          data: {
            start: taxon.id.to_s,
            category: Workarea::Catalog::Category.sample.try(:id).try(:to_s)
          }
        )

        3.times do
          next if categories.blank?
          taxon.children.create!(navigable: categories.pop)
        end
      end
    end
  end
end
