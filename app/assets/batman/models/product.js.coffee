class CoffeeQueue.Product extends Batman.Model
  @resourceName: 'product'
  @storageKey: 'products'
  @persist Batman.RailsStorage
  @encode 'id', 'name', 'price_cents'
  @encodeTimestamps()
