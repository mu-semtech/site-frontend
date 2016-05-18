`import Ember from 'ember'`

DocsPageRoute = Ember.Route.extend
  store: Ember.inject.service('store')

  model: ({page_slug: slug}) ->
    @store.query('page', 'filter[:exact:slug]': slug).then (r) ->
      r and r.get('firstObject')

  serialize: (model) ->
    page_slug: model.get('slug')


`export default DocsPageRoute`
