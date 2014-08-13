var game = {
  initialize: function(){ console.log('initialized'); },
  render: function() { console.log('render'); },
  fetchWord: function() { console.log('fetching'); },
  template: HandlebarsTemplates['hangman/board'],
  board: {}
}