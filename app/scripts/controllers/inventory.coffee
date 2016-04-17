'use strict'

###*
 # @ngdoc function
 # @name armoryApp.controller:InventoryCtrl
 # @description
 # # InventoryCtrl
 # Controller of the armoryApp
###
angular.module 'armoryApp'
  .controller 'InventoryCtrl', (firebaseServ, $routeParams) ->
    new class InventoryCtrl
      constructor: ->
        # @retrieve()
        @retrieve()

      personal: (thing, index, array)->
        # console.log $routeParams.names
        if $routeParams.name && $routeParams.name == thing.owner
          console.log JSON.stringify thing
          true
        else
          false

      retrieve: ->
        @gear = firebaseServ.retrieve()

      delete: (index)->
        @gear.$remove index

      add: () ->
        @gear.$add @newItem
        @blank()

      saveItem: (index) ->
        console.log(index)
        @gear.$save(index)

      holders : [
        {
          value:"Ruskin",
          text: "Ruskin"
        },
        {
          value:"Barok",
          text: "Barok"
        },
        {
          value:"Macintyre",
          text: "Macintyre"
        },
        {
          value:"Alura",
          text: "Alura"
        },
        {
          value:"Liza",
          text: "Liza"
        }
      ]
