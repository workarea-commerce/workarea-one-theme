module Workarea
  Plugin.append_stylesheets(
    "storefront.settings",
    "workarea/storefront/settings/font_families",
  )

  Plugin.append_stylesheets(
    "storefront.tools",
    "workarea/storefront/tools/checkout_section",
    "workarea/storefront/tools/full_bleed_container"
  )

  Plugin.append_stylesheets(
    "storefront.components",
    "workarea/storefront/components/hamburger",
    "workarea/storefront/components/utility_nav",
    "workarea/storefront/components/select_menu",
    "workarea/storefront/components/page_sub_footer",
    "workarea/storefront/components/header",
    "workarea/storefront/components/quantity_control",
    "workarea/storefront/components/product_media",
    "workarea/storefront/components/account_dashboard",
    "workarea/storefront/components/hero_slider_content_block",
    "workarea/storefront/components/color_box",
    "workarea/storefront/components/promo_code_accordion"
  )

  Plugin.append_javascripts(
    "storefront.config",
    "workarea/storefront/one_theme/config"
  )

  Plugin.append_javascripts(
    "storefront.dependencies",
    "workarea/storefront/dependencies/jquery.payment"
  )

  Plugin.append_javascripts(
    "storefront.modules",
    "workarea/storefront/modules/cart_indicator",
    "workarea/storefront/modules/utility_nav_dropdown",
    "workarea/storefront/modules/header_search_ui",
    "workarea/storefront/modules/mobile_filters",
    "workarea/storefront/modules/quantity_control"
  )

  Plugin.remove_partials(
    "storefront.product_summary",
    "workarea/storefront/products/reviews_summary",
    "workarea/storefront/products/quickview_button_placeholder"
  )

  Plugin.remove_partials(
    "storefront.product_details",
    "workarea/storefront/products/share"
  )

  Plugin.remove_stylesheets(
    "storefront.components",
    "workarea/storefront/swatches/components/option_button"
  )
end
