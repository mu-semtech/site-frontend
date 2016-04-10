`import Ember from 'ember'`

ApplicationIndexRoute = Ember.Route.extend
  model: ->
    @store.findAll('page')


`export default ApplicationIndexRoute`
