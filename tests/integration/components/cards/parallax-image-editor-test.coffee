`import { test, moduleForComponent } from 'ember-qunit'`
`import hbs from 'htmlbars-inline-precompile'`

moduleForComponent 'cards/parallax-image-editor', 'Integration | Component | cards/parallax image editor', {
  integration: true
}

test 'it renders', (assert) ->
  assert.expect 2

  # Set any properties with @set 'myProperty', 'value'
  # Handle any actions with @on 'myAction', (val) ->

  @render hbs """{{cards/parallax-image-editor}}"""

  assert.equal @$().text().trim(), ''

  # Template block usage:
  @render hbs """
    {{#cards/parallax-image-editor}}
      template block text
    {{/cards/parallax-image-editor}}
  """

  assert.equal @$().text().trim(), 'template block text'
