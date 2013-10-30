class CoffeeQueue.MainIndexView extends Batman.View
  constructor: ->
    super
    @set('order', new CoffeeQueue.Order())
    @set('orders', CoffeeQueue.Order.get('all'))

  requestCoffee: ->
    @order.save (err) =>
      if err && err.status == 200
        @orders.add(@order)
        @set('order', new CoffeeQueue.Order())

  @accessor 'products', ->
    CoffeeQueue.Product.get('all')