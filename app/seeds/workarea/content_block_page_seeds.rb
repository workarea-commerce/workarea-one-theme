module Workarea
  class ContentBlockPageSeeds
    def perform
      puts "Adding content blocks page..."
      page = Content::Page.create!(
        name: "Content Blocks"
      )
      content = Content.for(page)

      Workarea.config.content_block_types.each do |block_type|
        unless block_type.tags.include?("taxonomy")
          content.blocks.build(
            type: block_type,
            data: block_type.defaults
          )
        end
      end

      content.save!
    end
  end
end
