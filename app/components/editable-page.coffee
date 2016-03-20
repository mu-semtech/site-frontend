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
    @set 'editing', false
  mobiledocObserver: Ember.observer 'mobiledoc', (->
    @set 'editedMobiledoc', @get('mobiledoc')
  ).on('init')
  actions:
    toggleEdit: ->
      @toggleProperty 'editing'
      return
    updateMobileDoc: (newMobiledoc) ->
      @set 'mobiledoc', newMobiledoc
      return

`export default EditablePageComponent`
