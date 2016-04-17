'use strict'

###*
 # @ngdoc function
 # @name armoryApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the armoryApp
###
angular.module 'armoryApp'
  .controller 'MainCtrl', ->
    @awesomeThings = [
      'HTML5 Boilerplate'
      'AngularJS'
      'Karma'
    ]
    return
