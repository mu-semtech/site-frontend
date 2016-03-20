`import Ember from 'ember'`

IndexController = Ember.Controller.extend
  actions:
    updateMobiledoc: (mobiledoc) ->
      @set 'mobiledoc', mobiledoc
      return

  mobiledocAsString: Ember.computed 'mobiledoc', ->
    return JSON.stringify @get('mobiledoc')


`export default IndexController`
