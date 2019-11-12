/**
 * @namespace WORKAREA.cartIndicator
 */
WORKAREA.registerModule('cartIndicator', (function () {
    'use strict';

    var show = function (quantity) {
            if (quantity > 0) {
                $('.page-header__cart-link').addClass('page-header__cart-link--has-items');
            } else {
                $('.page-header__cart-link').removeClass('page-header__cart-link--has-items');
            }
        },

        /**
         * @method
         * @name init
         * @memberof WORKAREA.cartIndicator
         */
        init = function ($scope) {
            var quantity = $('[data-cart-indicator]', $scope).data('cartIndicator');

            if (_.isUndefined(quantity)) { return; }

            show(quantity);
        };

    WORKAREA.currentUser.gettingUserData.done(function (user) {
        show(user.cart_quantity);
    });

    return {
        init: init
    };
}()));
