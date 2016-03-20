`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'editable-page', 'Integration | Component | editable page', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{editable-page}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#editable-page}}
      template block text
    {{/editable-page}}
  """

  assert.equal @$().text().trim(), 'template block text'
