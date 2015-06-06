expect = require('chai').expect
Helper = require('hubot-test-helper')
helper = new Helper('../node_modules/hubot-diagnostics/src/diagnostics.coffee')

describe 'hello', ->
  beforeEach ->
    @room = helper.createRoom()

  afterEach ->
    @room.destroy()

  it 'ping', ->
    @room.user.say 'alice', '@hubot ping'
    expect(@room.messages).to.eql [
      ['alice', '@hubot ping'],
      ['hubot', 'PONG']
    ]
