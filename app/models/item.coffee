define(
  [
    "backbone"
  ]
  (
    Backbone
  )->
    class Item extends Backbone.Model
      defaults:
        name: "item"
        value: "123"
)
