`import Ember from 'ember'`

CardsCodeBlockComponent = Ember.Component.extend
  click: ->
    @editCard() if @get('editor')


`export default CardsCodeBlockComponent`
