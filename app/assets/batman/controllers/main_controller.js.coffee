class CoffeeQueue.MainController extends CoffeeQueue.ApplicationController
  routingKey: 'main'

  index: (params) ->

  @accessor 'coffee', ->
    "Mochaccino"
