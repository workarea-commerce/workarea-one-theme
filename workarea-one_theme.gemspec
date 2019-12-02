$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "workarea/one_theme/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "workarea-one_theme"
  s.version     = Workarea::OneTheme::VERSION
  s.authors     = ["Curt Howard"]
  s.email       = ["choward@workarea.com"]
  s.homepage    = "https://github.com/workarea-commerce/workarea-one-theme"
  s.summary     = "Minimal, versatile theme for workarea ecommerce"
  s.description = "A slick, polished, theme for smaller catalogs."

  s.files = `git ls-files`.split("\n")

  s.add_dependency 'workarea', '>= 3.5.0'
  s.add_dependency 'workarea-theme', '>= 1.1.1'

  s.add_dependency 'workarea-product_quickview', '>= 2.0.2'
  s.add_dependency 'workarea-slick_slider', '>= 1.0.3'
  s.add_dependency 'workarea-blog', '>= 3.5.0'
  s.add_dependency 'workarea-content_search', '>= 1.1.0'
  s.add_dependency 'workarea-filter_dropdowns', '>= 3.0.2'
  s.add_dependency 'workarea-gift_cards', '>= 4.0.0'
  s.add_dependency 'workarea-share', '>= 1.3.0'
  s.add_dependency 'workarea-reviews', '>= 3.1.0'
  s.add_dependency 'workarea-super_hero', '>= 2.3.0'
  s.add_dependency 'workarea-wish_lists', '>= 3.1.0'
  s.add_dependency 'workarea-swatches', '>= 1.0.5'
  s.add_dependency 'workarea-search_autocomplete', '>= 1.0.0'
end
