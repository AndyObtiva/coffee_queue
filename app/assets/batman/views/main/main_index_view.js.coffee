class CoffeeQueue.MainIndexView extends Batman.View
  constructor: ->
    super
    @set('orders', CoffeeQueue.Order.get('all'))
    @refresh()
    pusher = new Pusher('345c12f8435308e8d223');
    channel = pusher.subscribe('orders_channel');
    channel.bind 'order_created', (data) =>
      order_id = data["id"]
      CoffeeQueue.Order.find order_id, (err, order) =>
        @get('orders').add(order)

  @accessor 'products', ->
    CoffeeQueue.Product.get('all')

  requestCoffee: ->
    console.log(@get('order'))
    @get('order').save (err) => #change to @order if plausible
      if err && err.status == 200
#        @get('orders').add(@order)
        @refresh()
      else
        console.log(err)

  refresh: ->
    @set('order', new CoffeeQueue.Order(product_id: 1, product_option_id: 1))
    @refresh_product_options()

  refresh_product_options: ->
    CoffeeQueue.Product.find @get('order').get('product_id'), (err, product) =>
      product_options = product && product.get('product_options')
      no_options = [{name: 'No Options'}]
      @set('product_options', product_options || no_options)
