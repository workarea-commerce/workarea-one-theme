module Workarea
  module Storefront
    module ContentBlocks
      class HeroSliderBlockViewModel < ContentBlockViewModel
        def content_block_options
          {
            options: {
              slidesToShow: 1,
              slidesToScroll: 1,
              autoplay: false, # mobile autoplay
              dots: data[:show_dots],
              arrows: data[:show_arrows],
              centerMode: data[:partial_slide_preview],
              pauseOnHover: data[:pause_on_hover],
              pauseOnDotsHover: data[:pause_on_hover],
              pauseOnFocus: data[:pause_on_hover],
              mobileFirst: true,
              responsive: [
                {
                  breakpoint: Workarea.config.storefront_break_points[:wide] - 1,
                  settings: {
                    autoplay: data[:auto_rotate],
                    autoplaySpeed: rotate_speed
                  }
                }
              ]
            },
            stopOnInteraction: data[:stop_on_interaction]
          }.to_json
        end

        def has_content?
          data[:"heading"].present? || data[:"sub_heading"].present?
        end

        private

          def rotate_speed
            data[:auto_rotate_speed].to_f * 1000
          end
      end
    end
  end
end
