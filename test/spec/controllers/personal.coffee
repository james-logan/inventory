'use strict'

describe 'Controller: PersonalCtrl', ->

  # load the controller's module
  beforeEach module 'armoryApp'

  PersonalCtrl = {}

  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    PersonalCtrl = $controller 'PersonalCtrl', {
      # place here mocked dependencies
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(PersonalCtrl.awesomeThings.length).toBe 3
