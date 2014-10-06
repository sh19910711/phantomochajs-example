define(
  [
    "jquery"
    "backbone"
  ]
  (
    $
    Backbone
  )->
    class ItemView extends Backbone.View
      className: "view"

      render: ->
        el_name = $(document.createElement("div"))
        el_name.text "name: #{@model.get("name")}"

        el_value = $(document.createElement("div"))
        el_value.text "value: #{@model.get("value")}"

        @$el
          .empty()
          .append el_name
          .append el_value

        return @
)
