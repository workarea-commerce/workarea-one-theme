module Workarea
  module OneTheme
    class Engine < ::Rails::Engine
      include Workarea::Plugin
      include Workarea::Theme
      isolate_namespace Workarea::OneTheme

      config.to_prepare do
        Storefront::ApplicationController.helper(Storefront::OneThemeHelper)
      end
    end
  end
end
