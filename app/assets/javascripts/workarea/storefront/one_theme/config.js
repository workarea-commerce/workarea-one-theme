(function () {
    'use strict';

    /**
     * Config Variables
     */

    WORKAREA.config.oneTheme = {
        quantityConrol: {
            autoSubmitDelay: 500
        }
    };

    if (!_.isEmpty($.validator)) {
        // Add `CVV` method to jQuery Validate
        $.validator.addMethod('cvv', function (value, element) {
            return WORKAREA.checkoutPrimaryPayments.checkCvvCode(element);
        });
    }
})();
