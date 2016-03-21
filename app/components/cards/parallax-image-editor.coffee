`import Ember from 'ember'`

CardsParallaxImageEditorComponent = Ember.Component.extend
  content: Ember.computed 'payload', ->
    @get('payload') or ""
  actions:
    saveCard: ->
      @saveCard @get('content')


`export default CardsParallaxImageEditorComponent`
