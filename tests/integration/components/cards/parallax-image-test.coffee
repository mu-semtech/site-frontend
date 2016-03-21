`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'cards/parallax-image', 'Integration | Component | cards/parallax image', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{cards/parallax-image}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#cards/parallax-image}}
      template block text
    {{/cards/parallax-image}}
  """

  assert.equal @$().text().trim(), 'template block text'
