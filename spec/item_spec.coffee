describe "Item", ->

  # load module
  before (done)->
    requirejs(
      [
        "/app/models/item"
      ]
      (
        Item
      )->
        @Item = Item
        done()
    )

  context "create item", ->

    before ->
      @item = new Item

    context "check default value", ->

      it "name", ->
        expect(@item.get("name")).to.eq "item"

      it "value", ->
        expect(@item.get("value")).to.eq "123"
