/**
 * @namespace WORKAREA.headerSearchUI
 */
WORKAREA.registerModule('headerSearchUI', (function () {
    'use strict';

    var searchUiOpenClass = 'page-header__search-form--open',

        getSearchInput = function($searchHeader) {
            return $searchHeader.find('.text-box');
        },

        focusOnSearchInput = function($searchHeader) {
            var $searchInput = getSearchInput($searchHeader);
            $searchInput.trigger('focus');
        },

        openheaderSearchUi = function($searchHeader) {
            $searchHeader.addClass(searchUiOpenClass);
            focusOnSearchInput($searchHeader);
        },

        closeheaderSearchUi = function($searchHeader) {
            $searchHeader.removeClass(searchUiOpenClass);
        },

        headerSearchUiIsOpen = function($searchHeader) {
            return $searchHeader.hasClass(searchUiOpenClass);
        },

        searchInputEmpty = function($searchHeader) {
            var $searchInput = getSearchInput($searchHeader);
            return _.isEmpty($searchInput.val());
        },

        handleSearchToggleClick = function(event) {
            var $searchHeader = $(event.delegateTarget);

            event.preventDefault();

            if (headerSearchUiIsOpen($searchHeader) && searchInputEmpty($searchHeader)) {
                closeheaderSearchUi ($searchHeader);
            } else if (!headerSearchUiIsOpen($searchHeader)) {
                openheaderSearchUi($searchHeader);
            } else {
                $('form', $searchHeader).trigger('submit');
            }
        },

        /**
         * @method
         * @name init
         * @memberof WORKAREA.headerSearchUI
         */
        init = function ($scope) {
            var $searchHeader = $('[data-header-search-ui]', $scope);

            $searchHeader.on('click', 'button', handleSearchToggleClick);
        };

    return {
        init: init
    };
}()));
