`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'cards/code-block-editor', 'Integration | Component | cards/code block editor', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{cards/code-block-editor}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#cards/code-block-editor}}
      template block text
    {{/cards/code-block-editor}}
  """

  assert.equal @$().text().trim(), 'template block text'
