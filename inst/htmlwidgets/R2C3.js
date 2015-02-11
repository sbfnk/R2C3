HTMLWidgets.widget({

  name: 'R2C3',

  type: 'output',

  initialize: function(el, width, height) {

      return {
      };

  },

  renderValue: function(el, x, instance) {

      x.data.bindto = "#" + el.id;
      
      var chart = c3.generate(x.data);
  },

  resize: function(el, width, height, instance) {

  }

});
