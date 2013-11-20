class CoffeeQueue.Barista extends Batman.Model
  @resourceName: 'barista'
  @storageKey: 'baristas'
  @persist Batman.RailsStorage
  @encode 'username',
    decode: (username) -> name = Batman.helpers.humanize(username); alert(name); name
  @encodeTimestamps()
