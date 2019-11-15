$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "workarea/one_theme/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "workarea-one_theme"
  s.version     = Workarea::OneTheme::VERSION
  s.authors     = ["Jake Beresford"]
  s.email       = ["jberesford@weblinc.com"]
  s.homepage    = "https://github.com/workarea-commerce/workarea-one-theme"
  s.summary     = "Minimal, versatile theme for Workarea"
  s.description = "A slick, polished, theme for smaller catalogs."

  s.files = `git ls-files`.split("\n")

  s.add_dependency "workarea", "~> 3.x", ">= 3.4.x"
  s.add_dependency "workarea-theme", "~> 1.x"
  s.add_dependency "workarea-product_quickview", ">= 1.2.x"
  s.add_dependency "workarea-slick_slider", "~> 1.x"
  s.add_dependency "workarea-blog", '~> 3.x', ">= 3.2.x"
  s.add_dependency "workarea-content_search", "~> 1.x"
  s.add_dependency "workarea-filter_dropdowns", "~> 3.x"
  s.add_dependency "workarea-gift_cards", "~> 4.x"
  s.add_dependency "workarea-share", "~> 1.x", ">= 1.2.x"
  s.add_dependency "workarea-reviews", "~> 3.x"
  s.add_dependency "workarea-super_hero", "~> 2.x", ">= 2.1.x"
  s.add_dependency "workarea-wish_lists", "~> 3.x"
  s.add_dependency "workarea-swatches", "~> 1.x"
  s.add_dependency 'workarea-search_autocomplete', '~> 1.x'
end
