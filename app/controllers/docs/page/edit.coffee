`import Ember from 'ember'`

DocsPageEditController = Ember.Controller.extend
  pageController: Ember.inject.controller('docs.page')
  page: Ember.computed.reads('pageController.model')
  actions:
    updateContent: (newContent) ->
      @set 'page.content', newContent
    save: () ->
      @get('page').save()


`export default DocsPageEditController`
