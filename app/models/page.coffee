`import DS from 'ember-data'`

Page = DS.Model.extend
  title: DS.attr()
  content: DS.attr('json')


`export default Page`
