window.onload = function() {
  // Grab the html stored inside of the script tag that is our template
  var templateSource = document.getElementById('title-template').innerHTML

  // Compile the template using handlebars namespaced Object
  // Allows us to then insert information into our template
  // returns a function
  var template = Handlebars.compile(templateSource);

  // Define an object where the property names match the variables used in your template
  // The values will be the information inserted into the template
  var data = {
    greeting: 'Welcome to', 
    message: 'A JavaScript Templating Library', 
    url: 'http://handlebarsjs.com/images/handlebars_logo.png'
  };

  // Grab the DOM element where the template will be inserted
  var titleDiv = document.getElementById('title-div');
  
  // Pass the data object into the template function to render it
  // Insert the rendered template into the HTML
  titleDiv.innerHTML = template(data);
}