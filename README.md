Workarea One Theme
================================================================================

One Theme plugin for the Workarea platform. [Visit the One Theme demo site](https://one-theme.demo.workarea.com)


Browser Support
--------------------------------------------------------------------------------

Due to the occasional use of flexbox; OneTheme only supports IE 10+
If you need to support older versions of IE you will need to provide alternative styles
where flexbox is used.

Notable features
--------------------------------------------------------------------------------

* 2 additional Taxonomy content blocks which include products
* Retina support for PDP images using responsive images via dragonfly
* Hero Slider content block type with full bleed option
* Color scheme and font configuration
* Credit card formatting and validation in checkout.

Optimal Image Sizes
--------------------------------------------------------------------------------

| Image Type| Optimum size | Note |
|----------|--------|-------|
| Logo | 140 x 37px ||
| Product Images | 720px x 960px | This size does not account for use of image-zoom, it is recommended to *at least* double this size if your client is likely to want zoom functionality. |
| Blog thumbnails | 914px x 417px
| Category summary | 464 x 742px | Some cropping will occur depending on device size, Image height depends on product height at a diven device width. |
| Hero Slider | 1044 x 511px | An aspect ratio of 16:9 is recommended. Any height image could be used here, admin user should preview at different device sizes to ensure it scales well. |
| Hero Slider full bleed | 1682 x 823px ||

Out of the box plugin support
--------------------------------------------------------------------------------

The following workarea plugins are supported by OneTheme, and are dependencies of the plugin.

* Product Quickview
* Package Products
* Slick Slider
* Blog
* Content Search
* Gift Cards
* Share
* OMS
* Reviews
* Super Hero
* Wish Lists

Theme Configuration
--------------------------------------------------------------------------------

### Recommended initializer configuration

While you are able to configure the Workarea OneTheme from any initializer it is recommended
that you create a new initializer called theme.rb using the following code

    Workarea.configure do |config|
      config.theme = config.theme.merge(
        color_scheme: "one",
        font_stacks: {
            roboto: '"Roboto", "HelveticaNeue", "Helvetica Neue", sans-serif',
            lora: '"Lora", "Times New Roman", "Georgia", serif',
            hind: '"Hind", Helvetica, Arial, sans-serif',
            source_serif_pro: '"Source Serif Pro", "Times New Roman", Georgia, serif',
            muli: '"Muli", Helvetica, Arial, sans-serif',
            playfair_display: '"Playfair Display", "Times New Roman", Georgia, serif'
        },
        primary_font_family: "roboto",
        secondary_font_family: "lora"
      )
    end

This will set your application up with the default configuration options, but allow you to
change them easily.

---

### Color Schemes

OneTheme comes with 3 color schemes pre-defined for demo and learning purposes.

To change the color scheme in your application, set the color_scheme configuration
in your theme initializer to one of the following configurations:

 Default:

    Workarea.config.theme[:color_scheme] = "one"

Light:

    Workarea.config.theme[:color_scheme] = "workarea"

Dark:

    Workarea.config.theme[:color_scheme] = "midnight"

#### Creating a new color scheme

We will be creating a gem for theme infastructure in the near future that will make this process
more developer friendly. In the meantime you can create a new color scheme by:

1. Copying one of the existing color scheme files into your application re-nameing the file,
2. Update the color_scheme config to match the name of your new color scheme file.

__Example__
This will create a sass file called _custom_color_scheme.scss in your host application, please change [your-app-name]
From your ~/src directory, ensure you have workarea-one-theme pulled down

    cp -i workarea-one-theme/app/assets/stylesheets/workarea/storefront/theme_config/_one_color_scheme.scss [your-app-name]/app/assets/stylesheets/workarea/storefront/theme_config/_custom_color_scheme.scss

---

### Font Stacks

OneTheme includes configurable font-stack functionality!

A developer is able to configure the primary and secondary font stacks using the theme
configuration initializer. To change the font stacks in your application set the
primary_font_family and secondary_font_family initializer values to one of the font_stacks
defined in workarea-one-theme/config/initializers/theme.rb

Note: If you are using the starter_store generator to install the theme your initializer
must specify the font_stacks hash. The names defined in your primary and secondary
font variables must match one of the keys in the font_stacks hash.

Example:

    config.theme = config.theme.merge(
      primary_font_family: "hind",
      secondary_font_family: "source_serif_pro"
    )

The primary_font_family is used for most text throughout the site, including body text, links,
buttons, prices, content blocks etc.
The secondary_font_family is used for headings, specifically H1, H2, and elements with the heading--fancy class.

#### Suggested font combinations

1. Primary: roboto, Secondary: lora
2. Primary: hind, Secondary: source_serif_pro
3. Primary: muli, Secondary: playfair_display

#### Adding a new font

I recommend using google fonts where possible, the [googlefonts webfont helper](https://google-webfonts-helper.herokuapp.com) is a useful tool for downloading webfonts and easily generating @font-face CSS - give it a try!

1. Create a new directory in app/assets/fonts/workarea/storefront/<your_font_name_here>
2. Download woff and woff2 files for the font you want to use.
3. Place your font files in the directory we created in step 1.
4. Create a sass file for you @font-face declarations in /app/assets/stylesheets/workarea/storefront/theme_config/fonts/_<your_font_name_here>.scss
5. Update your theme initializer, adding a new font_stack and setting either the primary_font_family or secondary_font_family

Example configuration for Calibri font stack used as secondary font family:

    config.theme[:font_stacks] = config.theme.font_stacks.merge (
      calibri: 'Calibri, Candara, Segoe, "Segoe UI", Optima, Arial, sans-serif',
    )

    config.theme = config.theme.merge(
      secondary_font_family: "calibri"
    )

Workarea Platform Documentation
--------------------------------------------------------------------------------

See [https://developer.workarea.com](https://developer.workarea.com) for Workarea platform documentation.

Copyright & Licensing
--------------------------------------------------------------------------------
Workarea Commerce Platform is released under the [Business Software License](https://github.com/workarea-commerce/workarea/blob/master/LICENSE)
