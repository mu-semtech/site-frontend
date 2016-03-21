`import Ember from 'ember'`

CardsParallaxImageComponent = Ember.Component.extend
  url: Ember.computed 'payload', ->
    @get('payload') or ""
  click: ->
    @editCard() if @get('editor')
  actions:
    edit: ->
      @editCard()


`export default CardsParallaxImageComponent`
