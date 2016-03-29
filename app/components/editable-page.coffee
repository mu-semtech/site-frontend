`import Ember from 'ember'`
`import createComponentCard from 'ember-mobiledoc-editor/utils/create-component-card'`
`import menuSpec from '../config/editor/menus'`

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
  cards: Ember.computed 'cardNames', ->
    @get('cardNames').map createComponentCard
  menus: Ember.computed ->
    menuSpec.menus
  cardNames: Ember.computed 'menus', ->
    cardNames = []
    @get('menus').map (menu) ->
      menu.items.map (menuItem) ->
        cardNames.pushObject( menuItem.component )
    cardNames
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
