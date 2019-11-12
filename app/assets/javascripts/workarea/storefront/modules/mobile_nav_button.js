/**
 * @namespace WORKAREA.mobileNavButton
 */
WORKAREA.registerModule('mobileNavButton', (function () {
    'use strict';

    var replaceNavigation = function ($mobileNav, response) {
            var $navigation = $(response);

            WORKAREA.initModules($navigation);
            $mobileNav.empty().append($navigation);
        },

        requestNav = function (event) {
            var $mobileNav = $(event.delegateTarget);

            event.preventDefault();

            $.get(event.currentTarget.href)
            .done(_.partial(replaceNavigation, $mobileNav));
        },

        bindNavigationActions = function ($mobileNav) {
            $mobileNav
            .on('click', '.mobile-nav__back-button', requestNav)
            .on('click', '.mobile-nav__item--has-children a', requestNav);
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

        allowBodyScroll = function () {
            var offsetY = -parseInt($('body').css('top'));

            $('body').css({
                'position': 'static',
                'right': '',
                'left': '',
                'overflow': ''
            });

            $(window).scrollTop(offsetY);
        },

        setNavButtonOpen = function ($mobileNavButton) {
            $mobileNavButton.data('mobileNavOpen', true);
        },

        setNavButtonClosed = function ($mobileNavButton) {
            $mobileNavButton.data('mobileNavOpen', false);
        },

        deactivateMobileNav = function ($mobileNav) {
            $mobileNav.removeClass('mobile-nav--active');
            $('.page-container').removeClass('page-container--drawer-left-open');
            setNavButtonClosed($('#mobile_nav_button'));
            $('#mobile_nav_overlay').addClass('hidden');
            allowBodyScroll();
        },

        activateMobileNav = function ($mobileNav) {
            $mobileNav.addClass('mobile-nav--active');
            $('.page-container').addClass('page-container--drawer-left-open');
            setNavButtonOpen($('#mobile_nav_button'));
            $('#mobile_nav_overlay').removeClass('hidden');
            preventBodyScroll();
        },

        injectMobileNav = function (response) {
            var $mobileNav = $('<div class="mobile-nav" id="mobile_nav" />'),
                $overlay = $('<div class="mobile-nav-overlay" id="mobile_nav_overlay" />');

            $mobileNav.append(response);

            WORKAREA.initModules($mobileNav);
            $overlay.on('click', function () {
                deactivateMobileNav($('#mobile_nav'));
            });

            activateMobileNav($mobileNav);
            bindNavigationActions($mobileNav);

            $('body').append($mobileNav, $overlay);
        },

        requestMobileNav = function (href) {
            $.get(href).done(injectMobileNav);
        },

        openMobileNav = function ($nav, navUrl) {
            if (_.isEmpty($nav)) {
                requestMobileNav(navUrl);
            } else {
                activateMobileNav($nav);
            }
        },

        handleNavButtonClick = function(event) {
            var $button = $(event.currentTarget),
                navOpen = $button.data('mobileNavOpen'),
                navUrl = $button.attr('href');

            event.preventDefault();

            if (navOpen) {
                deactivateMobileNav($('#mobile_nav'));
            } else {
                openMobileNav($('#mobile_nav'), navUrl);
            }
        },

        /**
         * @method
         * @name init
         * @memberof WORKAREA.mobileNavButton
         */
        init = function ($scope) {
            $('#mobile_nav_button', $scope).on('click', handleNavButtonClick);
        };

    return {
        init: init
    };
}()));
