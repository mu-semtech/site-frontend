`import Ember from 'ember'`

IndexController = Ember.Controller.extend
  actions:
    updateMobiledoc: (mobiledoc) ->
      @set 'mobiledoc', mobiledoc
      return
  shownPages: Ember.computed 'model.[]', 'model.@each.topic', 'model.@each.order', ->
    @get('model').filter( (m) -> m.get('order') and m.get('topic') ).sortBy('order')
  mobiledocAsString: Ember.computed 'mobiledoc', ->
    return JSON.stringify @get('mobiledoc')


`export default IndexController`
