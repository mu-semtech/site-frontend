`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'parallax-image', 'Integration | Component | parallax image', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{parallax-image}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#parallax-image}}
      template block text
    {{/parallax-image}}
  """

  assert.equal @$().text().trim(), 'template block text'
