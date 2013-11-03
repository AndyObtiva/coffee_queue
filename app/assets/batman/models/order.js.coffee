class CoffeeQueue.Order extends Batman.Model
  @resourceName: 'order'
  @storageKey: 'orders'
  @persist Batman.RailsStorage
  @encode 'id', 'customer_name', 'product_id', 'product_option_id'
  @encodeTimestamps()
  @belongsTo 'product'
  @belongsTo 'product_option'
  @validate 'customer_name', presence: true
