'use strict'

###*
 # @ngdoc service
 # @name armoryApp.firebase
 # @description
 # # firebase
 # Service in the armoryApp.
###
angular.module 'armoryApp'
  .service 'firebaseServ', ($firebaseArray)->
    # AngularJS will instantiate a singleton by calling "new" on this function
    new class firebaseServ
      constructor: ->
        @fb = new Firebase('https://armory.firebaseio.com/')
        # console.log @fb
      retrieve: ->
        # console.log @fb
        @fbArray = $firebaseArray @fb
      # sync: (scope, key)->
      #   @retrieve().$bindTo scope, key
