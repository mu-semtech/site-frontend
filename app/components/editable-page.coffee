`import Ember from 'ember'`

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
