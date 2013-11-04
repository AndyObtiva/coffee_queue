class CoffeeQueue.MainIndexView extends Batman.View
  constructor: ->
    super
    @set('orders', CoffeeQueue.Order.get('all'))
    @refresh()

  @accessor 'products', ->
    CoffeeQueue.Product.get('all')

  requestCoffee: ->
    console.log(@get('order'))
    @get('order').save (err) => #change to @order if plausible
      if err && err.status == 200
        @get('orders').add(@order) #change to @order if plausible
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
