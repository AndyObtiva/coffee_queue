class CoffeeQueue.Barista extends Batman.Model
  @resourceName: 'barista'
  @storageKey: 'baristas'
  @persist Batman.RailsStorage
  @encode 'username',
    decode: (username) -> Batman.helpers.humanize(username) # not working TODO fix
  @encodeTimestamps()
