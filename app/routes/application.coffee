`import Ember from 'ember'`

ApplicationRoute = Ember.Route.extend
  model: ->
    @store.findAll('page')


`export default ApplicationRoute`
