Workarea.configure do |config|
  config.navigation_category_summary_product_count ||= 4

  config.category_summary_product_count = 4

  config.content_areas = config.content_areas.merge(
    "layout" => %w(header_promo footer_column_1 footer_column_2 footer_column_3)
  )
end
