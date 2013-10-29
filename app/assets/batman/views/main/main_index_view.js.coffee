class CoffeeQueue.MainIndexView extends Batman.View
  requestCoffee: ->
    @controller.order.set('customer_name', 'Enter Name')
    @controller.orders << @controller.order

  @accessor 'hasCoffee', ->
    true

  @accessor 'order', ->
    new CoffeeQueue.Order(customer_name: 'Enter Name', coffee: 'Espresso')

  @accessor 'orders', ->
    CoffeeQueue.Order.get('all')
