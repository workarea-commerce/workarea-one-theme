Workarea One Theme 1.2.0 (2019-04-02)
--------------------------------------------------------------------------------

*   Update for v3.4 compatibility

    * View changes to match v3.4 diff
    * Add via tracking for orders
    * Use delete method for logout link
    * Fix homepage seeds
    * Update tests for v3.4
    * Updated CI scripts for mongo 4
    * Lock plugin down to minimum version of v3.4

    ONETHEME-133
    Jake Beresford



Workarea One Theme 1.1.4 (2018-12-11)
--------------------------------------------------------------------------------

*   Fix name of decorated class - was updated in workarea-swatches

    ONETHEME-131
    Jake Beresford



Workarea One Theme 1.1.3 (2018-11-14)
--------------------------------------------------------------------------------

*   Bump version for v1.1.3 release

    Jake Beresford

*   Fix bug with flexbox in IE11

    Added a 100% width constraint to product primary image to prevent bug in IE11 where product images would overflow their container and interfere with the add to cart form

    ONETHEME-130
    Jake Beresford



Workarea One Theme 1.1.2 (2018-10-02)
--------------------------------------------------------------------------------

*   Remove utility-nav-container markup and styles

    * The implementation of utility nav was changed during development, this code was redundant.

    ONETHEME-128
    Jake Beresford

*   Add missing opengraph tags to blog_entry/show view

    ONETHEME-129
    Jake Beresford

*   Add minimum version requirements to all dependencies

    ONETHEME-129
    Jake Beresford



Workarea One Theme 1.1.1 (2018-07-31)
--------------------------------------------------------------------------------

*   Move the image to the correct spot

    ONETHEME-127
    Jake Beresford

*   Move hero slider image out of slide.has_content?

    ONETHEME-127
    Jake Beresford

*   * Change invalid state for styled selects to use .property--invalid rather than :invalid to prevent state changing if DOM is updated by JS

    ONETHEME-126
    Jake Beresford

*   Fixes bug with selecting Armed forces America as state

    ONETHEME-126
    Jake Beresford

*   Update breakpoints for product media carousels to wide to prevent overflowing at smedium sizes

    * Keep product image centered if there is only one image

    ONETHEME-125
    Jake Beresford

*   Add class to support primary nav hover functionality coming in v3.4

    ONETHEME-125
    Jake Beresford

*   Add missing append point to media carousel

    ONETHEME-125
    Jake Beresford

*   Remove now redundant decorated test

    ONETHEME-124
    Jake Beresford

*   Fix issue where non-US states were not being populated as a select menu

    * address_region_fields was dependent on DOM order, changing the way we select region fields allows regions to be stored properly
    * Add base functionality to toggle required field indicator for region

    ONETHEME-124
    Jake Beresford

*   ONETHEME-123: Add missing recaptcha tags for new reviews
    Andy Sides


Workarea One Theme 1.1.0 (2018-06-29)
--------------------------------------------------------------------------------

*   PR feedback

    * Fix typo
    * Correct region field aria label
    * Remove redundant prompt

    ONETHEME-116
    Jake Beresford

*   QA Fixes

    * Fix indentation of append point to be within a .grid__cell
    * Fix missing aria tags

    ONETHEME-116
    Jake Beresford

*   Fix image sizes on PDP carousel

    * Remove repeat definition of max-width for images which was causing incorrect sizes to be used when above medium-breakpoint
    * Correct class name for product-media if only 1 image is present

    ONETHEME-121
    Jake Beresford

*   Add new dragonfly processor for swatch thumbnails

    ONETHEME-120
    Jake Beresford

*   Fix size of image option buttons to match color swatches

    ONETHEME-120
    Jake Beresford

*   * Decorate and fix failing test

    ONETHEME-120
    Jake Beresford

*   v3.3 compatibility updates

    * Remove dependency on store locator
    * Remove dependency on clothing and all related files
    * Apply markup and Sass changes for swatch product template
    * Apply styles to swatch facets
    * Decorate failing test

    ONETHEME-120
    Jake Beresford

*   Override option_button.scss from base

    ONETHEME-120
    Jake Beresford

*   * Install swatches and override views & styles

    ONETHEME-120
    Jake Beresford

*   Fix rubocop nochangelog

    ONETHEME-117
    Jake Beresford

*   Upgrade for v3.3

    * Override and add font families to email/settings.scss
    * Update views and styles based workarea_upgrade diff
    * Bump workarea and gift card version in gemspec
    * Use optional field markup
    * Use optional field for promo code in cart
    * Use optional field for gift card payments
    * Update tests for headless chrome
    * Override and update new product templates from workarea storefront
    * Add new theme color variable for input required
    * Update reviews with latest changes for verified purchases
    * Update paths for email settings due to asset compilation error in base

    ONETHEME-116
    Jake Beresford


Workarea One Theme 1.0.1 (2018-03-26)
--------------------------------------------------------------------------------

*   Remove multi-site from pre-integrated plugins list in README

    ONETHEME-110
    Jake Beresford

*   Add font_stacks to readme theme intializer example

    * Ensure readme example for theme.rb config is correct
    * Move recommended font-stacks comment in to the readme
    * Fix README linting

    ONETHEME-109
    Jake Beresford

*   Remove unnecessary style guide partial appends, these happen automatically now. Huzzah!

    ONETHEME-110
    Jake Beresford

*   Remove dependency on multi-site

    * This dependency was added based on the SE gemfile without real consideration. The dependency adds no value to the theme and adds unnecessary dependencies to a host app running OneTheme

    ONETHEME-110
    Jake Beresford

*   Add missing append point to product/show view

    ONETHEME-112
    Jake Beresford


Workarea One Theme 1.0.0 (2018-02-20)
--------------------------------------------------------------------------------
