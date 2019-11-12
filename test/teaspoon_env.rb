require "workarea/testing/teaspoon"

Teaspoon.configure do |config|
  config.root = Workarea::OneTheme::Engine.root
  Workarea::Teaspoon.apply(config)
end
