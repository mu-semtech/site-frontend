`import Ember from 'ember'`

CardsCodeBlockEditorComponent = Ember.Component.extend
  code: Ember.computed 'payload', ->
    if Ember.typeOf(@get('payload')) == "string"
      @get('payload')
    else
      ""
  actions:
    saveCard: ->
      @saveCard @get('code')


`export default CardsCodeBlockEditorComponent`
