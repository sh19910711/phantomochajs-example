describe "ItemView", ->

  # load module
  before (done)->
    requirejs(
      [
        "/app/models/item"
        "/app/views/item_view"
      ]
      (
        Item
        ItemView
      )->
        @Item = Item
        @ItemView = ItemView
        done()
    )

  context "create item", ->

    before ->
      @item = new Item

    context "create view", ->
      
      before ->
        @item_view = new ItemView(
          model: @item
        )

      context "render", ->
        
        before ->
          @item_view.render()

        context "check view element", ->

          it "DOM class", ->
            expect(@item_view.$el.attr("class")).to.include "view"
  
          it "name", ->
            expect(@item_view.$el.text()).to.include "item"

          it "value", ->
            expect(@item_view.$el.text()).to.include "123"

