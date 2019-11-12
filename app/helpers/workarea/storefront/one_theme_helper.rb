module Workarea
  module Storefront
    module OneThemeHelper
      def navigation_menu_item_parent?(menu)
        return true unless menu.content.blank? ||
          ContentViewModel.new(menu.content).content_blocks.blank?
      end

      # Overriding functionality from Workarea::Storefront::CreditCardsHelper
      # Adds issuer class modifier to payment icons
      def credit_card_issuer_icon(issuer)
        icon_path = if card_icon_available?(issuer.optionize)
          "workarea/storefront/payment_icons/#{issuer.systemize}.svg"
        else
          "workarea/storefront/default_card.svg"
        end

        inline_svg(icon_path, class: "payment-icon payment-icon--#{issuer.dasherize}", title: issuer.humanize)
      end

      def media_alt_image_slider_options(product_id)
        {
          waitForImages: true,
          options: {
            asNavFor: "##{product_id}_primary_media_carousel",
            slidesToShow: 3,
            slidesToScroll: 1,
            autoplay: false,
            mobileFirst: true,
            dots: false,
            arrows: true,
            focusOnSelect: true,
            responsive: [
              {
                breakpoint: Workarea.config.storefront_break_points[:wide] - 1,
                settings: {
                  vertical: true,
                  verticalSwiping: true
                }
              }
            ]
          }
        }.to_json
      end

      def media_primary_image_slider_options(product_id)
        {
          waitForImages: true,
          options: {
            asNavFor: "##{product_id}_alt_media_carousel",
            slidesToShow: 1,
            slidesToScroll: 1,
            autoplay: false,
            mobileFirst: true,
            dots: false,
            arrows: false
          },
          forceSetPosition: true
        }.to_json
      end

      def select_tag(name, option_tags = nil, options = {})
        content_tag :div, super, class: "select-menu"
      end

      def no_breadcrumbs?
        !content_for?(:breadcrumbs) && @breadcrumbs.nil? && request.original_url != root_url
      end
    end
  end
end
