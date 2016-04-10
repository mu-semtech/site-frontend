`import DS from 'ember-data'`

Page = DS.Model.extend
  title: DS.attr()
  content: DS.attr('json')
  topic: DS.attr()
  order: DS.attr('number')

`export default Page`
