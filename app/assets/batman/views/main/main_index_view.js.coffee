class CoffeeQueue.MainIndexView extends Batman.View
  constructor: ->
    super
    @set('order', new CoffeeQueue.Order(coffee: 'Espresso'))
    @set('orders', CoffeeQueue.Order.get('all'))

  requestCoffee: ->
    @order.save()
    @orders.add(@order)
    @set('order', new CoffeeQueue.Order(coffee: 'Espresso'))

  @accessor 'hasCoffee', ->
    true
