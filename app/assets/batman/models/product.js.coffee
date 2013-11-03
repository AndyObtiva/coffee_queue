class CoffeeQueue.Product extends Batman.Model
  @resourceName: 'product'
  @storageKey: 'products'
  @persist Batman.RailsStorage
  @encode 'id', 'name'
  @encodeTimestamps()
  @hasMany 'orders'
  @hasMany 'product_options'
