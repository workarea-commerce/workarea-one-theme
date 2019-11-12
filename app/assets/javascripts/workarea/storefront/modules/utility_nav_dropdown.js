/**
 * @namespace WORKAREA.utilityNavDropdown
 */
WORKAREA.registerModule('utilityNavDropdown', (function () {
    'use strict';

    var openUtilityNav = function($utilityNav) {
            $utilityNav.addClass('utility-nav--is-open');
        },

        closeUtilityNav = function($utilityNav) {
            $utilityNav.removeClass('utility-nav--is-open');
        },

        utilityNavIsOpen = function($utilityNav) {
            return $utilityNav.hasClass('utility-nav--is-open');
        },

        handleClickEvent = function(event) {
            var $button = $(event.currentTarget),
                $pageHeader = $button.closest('.page-header'),
                $utilityNav = $pageHeader.find('.utility-nav');

            if (utilityNavIsOpen($utilityNav)) {
                closeUtilityNav($utilityNav);
            } else {
                openUtilityNav($utilityNav);
            }
        },

        /**
         * @method
         * @name init
         * @memberof WORKAREA.utilityNavDropdown
         */
        init = function ($scope) {
            $('[data-utility-nav-dropdown]', $scope).on('click', handleClickEvent);
        };

    return {
        init: init
    };
}()));
