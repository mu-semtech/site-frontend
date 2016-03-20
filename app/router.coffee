`import Ember from 'ember'`
`import config from './config/environment'`

Router = Ember.Router.extend
  location: config.locationType


Router.map ->
  @route 'docs', ->
    @route 'pages', ->
    @route 'page', { path: "page/:page_id" }, ->
      @route 'edit'


`export default Router`
