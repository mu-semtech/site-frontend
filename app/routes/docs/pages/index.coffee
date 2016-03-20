`import Ember from 'ember'`

DocsPagesIndexRoute = Ember.Route.extend
  model: ->
    @store.findAll('page')


`export default DocsPagesIndexRoute`
