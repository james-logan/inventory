'use strict'

describe 'Service: firebase', ->

  # load the service's module
  beforeEach module 'armoryApp'

  # instantiate service
  firebase = {}
  beforeEach inject (_firebase_) ->
    firebase = _firebase_

  it 'should do something', ->
    expect(!!firebase).toBe true
