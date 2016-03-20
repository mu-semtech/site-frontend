`import Ember from 'ember'`

ApplicationController = Ember.Controller.extend
  actions:
    updateMobiledoc: (mobiledoc) ->
      @set 'mobiledoc', mobiledoc
      return

  mobiledocAsString: Ember.computed 'mobiledoc', ->
    return JSON.stringify @get('mobiledoc')


`export default ApplicationController`
