`import Ember from 'ember'`
`import menuSpec from '../config/editor/menus'`

EditorToolbarComponent = Ember.Component.extend
  menus: Ember.computed ->
    menuSpec.menus


`export default EditorToolbarComponent`
