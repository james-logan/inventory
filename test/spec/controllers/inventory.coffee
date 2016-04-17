'use strict'

describe 'Controller: InventoryCtrl', ->

  # load the controller's module
  beforeEach module 'armoryApp'

  InventoryCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    InventoryCtrl = $controller 'InventoryCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(InventoryCtrl.awesomeThings.length).toBe 3
