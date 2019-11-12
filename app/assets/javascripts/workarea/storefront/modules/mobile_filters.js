/**
 * @namespace WORKAREA.mobileFilters
 */
WORKAREA.registerModule('mobileFilters', (function () {
    'use strict';

    var allowBodyScroll = function () {
            var offsetY = -parseInt($('body').css('top'));

            $('body').css({
                'position': 'static',
                'right': '',
                'left': '',
                'overflow': ''
            });

            $(window).scrollTop(offsetY);
        },

        /**
         * 1. required to prevent scrolling in ios when an input
         *    in a drawer is focused.
         */
        preventBodyScroll = function () {
            var offsetY = window.pageYOffset;

            $('body').css({
                'position': 'fixed',
                'top': -(offsetY) + 'px',
                'right': '0px',
                'left': '0px',
                'overflow': 'hidden' /* [1] */
            });
        },

        closeFilters = function($mobileFilters) {
            var $overlay = $('#mobile-filters-overlay');

            $('.page-container').removeClass('page-container--drawer-left-open');
            $mobileFilters.removeClass('mobile-filters--is-open');
            $overlay.addClass('hidden');
            allowBodyScroll();
        },

        openFilters = function($mobileFilters) {
            var $overlay = $('#mobile-filters-overlay');

            $('.page-container').addClass('page-container--drawer-left-open');
            $mobileFilters.addClass('mobile-filters--is-open');
            $overlay.removeClass('hidden');
            preventBodyScroll();
        },

        handleEvent = function() {
            var $mobileFilters = $('#mobile-filter-drawer');

            openFilters($mobileFilters);
        },

        handleOverlayEvent = function () {
            var $mobileFilters = $('#mobile-filter-drawer');

            closeFilters($mobileFilters);
        },

        /**
         * @method
         * @name init
         * @memberof WORKAREA.mobileFilters
         */
        init = function ($scope) {
            $('[data-mobile-filters]', $scope).on('click', handleEvent);
            $('#mobile-filters-overlay', $scope).on('click', handleOverlayEvent);
        };

    return {
        init: init
    };
}()));
