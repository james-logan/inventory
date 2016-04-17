'use strict'

###*
 # @ngdoc overview
 # @name armoryApp
 # @description
 # # armoryApp
 #
 # Main module of the application.
###
angular
  .module 'armoryApp', [
    'ngAnimate',
    'ngCookies',
    'ngResource',
    'ngRoute',
    'ngSanitize',
    'ngTouch',
    'firebase',
    'xeditable'
  ]
  .config ($routeProvider) ->
    $routeProvider
      .when '/',
        templateUrl: 'views/inventory.html'
        controller: 'InventoryCtrl'
        controllerAs: 'inventory'
      .otherwise
        redirectTo: '/'
  .run (editableOptions) ->
    editableOptions.theme = 'bs3'
