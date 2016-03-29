`import Ember from 'ember'`

DocsPagesIndexController = Ember.Controller.extend
  actions:
    newPage: ->
      page = @store.createRecord( 'page', title: @get('newPageTitle') )
      page.save().then =>
        @set 'newPageTitle', ""


`export default DocsPagesIndexController`
