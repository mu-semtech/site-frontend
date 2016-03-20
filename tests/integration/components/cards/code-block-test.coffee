`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'cards/code-block', 'Integration | Component | cards/code block', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{cards/code-block}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#cards/code-block}}
      template block text
    {{/cards/code-block}}
  """

  assert.equal @$().text().trim(), 'template block text'
