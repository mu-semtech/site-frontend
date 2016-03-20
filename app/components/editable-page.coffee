`import Ember from 'ember'`
`import createComponentCard from 'ember-mobiledoc-editor/utils/create-component-card'`

EditablePageComponent = Ember.Component.extend
  classNames: ['editable-page']
  init: () ->
    @_super(arguments...)
    doc =
      version: '0.3.0',
      atoms: [],
      markups: [],
      cards: [],
      sections: []
    @set 'mobiledoc', doc unless @get('mobiledoc')
  cards: Ember.computed ->
    [ createComponentCard('cards/code-block') ]
  cardNames: Ember.computed ->
    ["cards/code-block"]
  mobiledocObserver: Ember.observer 'mobiledoc', (->
    @set 'editedMobiledoc', @get('mobiledoc')
  ).on('init')
  actions:
    toggleEdit: ->
      @toggleProperty 'editing'
      return
    updateMobiledoc: (newMobiledoc) ->
      @set 'mobiledoc', newMobiledoc
      this["on-change"]?(newMobiledoc)
      return

`export default EditablePageComponent`
