class CoffeeQueue.Order extends Batman.Model
  @resourceName: 'order'
  @storageKey: 'orders'
  @persist Batman.RailsStorage
  @encode 'id', 'customer_name', 'product_id'
  @encodeTimestamps()
  @belongsTo 'product'
  @validate 'customer_name', presence: true
