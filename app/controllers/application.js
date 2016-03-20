import Ember from 'ember';

export default Ember.Controller.extend({
  init() {
    let doc = {
      version: '0.3.0',
      atoms: [],
      markups: [],
      cards: [],
      sections: []
    };
    this.set('mobileDoc', doc);
    this.set('editedMobileDoc', doc);
  },
  actions: {
    updateMobileDoc: function( newDoc ){
      this.set('editedMobileDoc', newDoc);
      console.log(newDoc);
    }
  },
  editedMobileDocAsString: Ember.computed('editedMobileDoc', function() {
    return JSON.stringify(this.get('editedMobileDoc'));
  })
  
});
