`import Ember from 'ember'`

CardsCodeBlockEditorComponent = Ember.Component.extend
  code: Ember.computed 'payload.content', ->
    @get('payload.content') or ""
  actions:
    saveCard: ->
      @saveCard content: @get('code')


`export default CardsCodeBlockEditorComponent`
