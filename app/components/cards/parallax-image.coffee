`import Ember from 'ember'`

CardsParallaxImageComponent = Ember.Component.extend
  classNames: ['fixed-width-card']
  didRender: ->
    # TODO: recalculate when the page resizes
    @_super(arguments...)
    left = @$().position().left
    width = Ember.$(window).width()
    @$().css
      width: "#{width}px"
      "margin-left": "-#{left}px"
  url: Ember.computed 'payload.url', ->
    @get('payload.url') or ""
  click: ->
    @editCard() if @get('editor')
  actions:
    edit: ->
      @editCard()


`export default CardsParallaxImageComponent`
