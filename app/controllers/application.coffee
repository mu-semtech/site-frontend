`import Ember from 'ember'`

ApplicationController = Ember.Controller.extend
  shownPages: Ember.computed 'model.[]', 'model.@each.topic', 'model.@each.order', ->
    @get('model').filter( (m) -> m.get('order') and m.get('topic') ).sortBy('order')


`export default ApplicationController`
