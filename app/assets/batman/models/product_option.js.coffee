class CoffeeQueue.ProductOption extends Batman.Model
  @resourceName: 'product_option'
  @storageKey: 'product_options'
  @persist Batman.RailsStorage
  @encode 'id', 'product_id', 'name', 'price_cents'
  @encodeTimestamps()
  @belongsTo 'product'
