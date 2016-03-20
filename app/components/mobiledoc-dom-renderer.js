// see: https://github.com/bustlelabs/mobiledoc-kit/blob/5b887b1/demo/app/components/mobiledoc-dom-renderer.js
import Ember from 'ember';
import Renderer from 'ember-mobiledoc-dom-renderer';

let renderer = new Renderer();

export default Ember.Component.extend({
  didRender() {
    let mobiledoc = this.get('mobiledoc');
    if (!mobiledoc) {
      return;
    }

    if (this._teardownRender) {
      this._teardownRender();
      this._teardownRender = null;
    }

    let target = this.$();
    target.empty();
    try {
      let { result, teardown } = renderer.render(mobiledoc);
      target.append(result);
      this._teardownRender = teardown;
    } catch(e) {
      console.error(e);
      let result = document.createTextNode(e.message);
      target.append(result);
    }
  }
});
