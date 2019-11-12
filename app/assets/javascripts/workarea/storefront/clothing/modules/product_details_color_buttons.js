/**
 * @namespace  WORKAREA.productDetailsColorButtons
 */
WORKAREA.registerModule('productDetailsColorButtons', (function () {
    'use strict';

    var selectSizeButton = function ($selectedButton, $newProductDetails) {
            var $newSelectedButton,
                selectedSize;

            if (_.isEmpty($selectedButton)) { return; }

            selectedSize = $selectedButton.data('productDetailsSizeButton').size;

            $newSelectedButton = $(
                '[data-product-details-size-button]', $newProductDetails
            ).filter(function (index, button) {
                return $(button).data('productDetailsSizeButton').size === selectedSize;
            });

            $newSelectedButton
                .prop('checked', true)
                .trigger('change');
        },

        replaceProductDetails = function ($productDetails, newView) {
            var $selectedButton = $('[name=sku]:checked', $productDetails),
                $newProductDetails = $(newView)
                                         .find('.product-details')
                                             .addBack('.product-details');

            $productDetails.replaceWith($newProductDetails);

            WORKAREA.initModules($newProductDetails);

            selectSizeButton($selectedButton, $newProductDetails);
        },

        loadImage = function ($productDetails, $button, newProductDetails) {
            var imageSrc = $('.product-media__primary-image-link:first', newProductDetails).attr('href'),
                gettingImage = WORKAREA.image.get(imageSrc);

            WORKAREA.loading.createLoadingIndicator(gettingImage, {
                container: $button,
                cssModifiers: 'loading--fill-relative-container',
                delay: 0
            });

            gettingImage.always(_.partial(replaceProductDetails, $productDetails, newProductDetails));
        },

        fallbackToUrl = function (endpoint) {
            window.location = endpoint;
        },

        handleColorButtonClick = function (event) {
            var $button = $(event.currentTarget),
                $productDetails = $button.closest('.product-details'),
                $quantity = $productDetails.find('[name=quantity]'),

                endpoint = $button.attr('href'),
                gettingProductDetails = $.get(endpoint, {
                    quantity: $quantity.val()
                });

            event.preventDefault();

            gettingProductDetails
            .done(_.partial(loadImage, $productDetails, $button))
            .fail(_.partial(fallbackToUrl, endpoint));
        },

        /**
         * @method
         * @name init
         * @memberof WORKAREA.productDetailsColorButtons
         */
        init = function ($scope) {
            $('[data-product-details-color-button]', $scope)
            .on('click', handleColorButtonClick);
        };

    return {
        init: init
    };
}()));
