`import Ember from 'ember'`

ApplicationController = Ember.Controller.extend
  init: ->
    doc =
      version: '0.3.0',
      atoms: [],
      markups: [],
      cards: [],
      sections: []
    @set 'mobileDoc', doc
    @set 'editedMobileDoc', doc

  actions:
    updateMobileDoc: (newDoc) ->
      @set 'editedMobileDoc', newDoc
      return

  editedMobileDocAsString: Ember.computed 'editedMobileDoc', ->
    return JSON.stringify @get('editedMobileDoc')


`export default ApplicationController`
