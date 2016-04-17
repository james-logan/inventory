'use strict'

###*
 # @ngdoc function
 # @name armoryApp.controller:InventoryCtrl
 # @description
 # # InventoryCtrl
 # Controller of the armoryApp
###
angular.module 'armoryApp'
  .controller 'InventoryCtrl', (firebaseServ) ->
    new class InventoryCtrl
      constructor: ->
        # @retrieve()
        @retrieve()

      retrieve: ->
        @gear = firebaseServ.retrieve()

      delete: (index)->
        @gear.$remove index

      add: () ->
        @gear.$add @newItem
        @blank()

      saveItem: (index) ->
        console.log 'saving tiem', index
        @gear.$save(index)

      holders : [
        {
          value:"Ruskin Sartorius",
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

      blank: ->
        @newItem =
          {
            name : null,
            price : {
              number : null,
              unit : null
            }
            owner : null
          }
      newItem: {
        name : null,
        price : {
          number : null,
          unit : null
        }
        owner : null
      }
