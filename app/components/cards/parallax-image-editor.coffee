`import Ember from 'ember'`

CardsParallaxImageEditorComponent = Ember.Component.extend
  className: ['fixed-width-card']
  didRender: ->
    # TODO: recalculate when the page resizes
    @_super(arguments...)
    left = @$().position().left
    width = Ember.$(window).width()
    @$().css
      width: "#{width}px"
      "margin-left": "-#{left}px"
  content: Ember.computed 'payload', ->
    @get('payload') or ""
  actions:
    saveCard: ->
      @saveCard @get('content')


`export default CardsParallaxImageEditorComponent`
