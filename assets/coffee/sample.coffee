window.sample = window.sample || []
Common = require './common.coffee'

class Test 
  constructor: () ->
  
  init: () ->
    Common.echo 'hello world'

window.sample.Test = Test 
