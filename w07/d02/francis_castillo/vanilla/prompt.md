  ### Vanilla Javascript DOM manipulation

* Access the page title
    var list = document.getElementById('page-title');
* Access the list
    var list = document.getElementById('awesome-list');
* Add a fourth item to the list
    var item = document.createElement("li");
    var itemText = document.createTextNode("FOURTH ITEM ICE SUCKS!");
    item.appendChild(itemText);
    list.appendChild(item);
* Move the image to after the list
    var image = document.getElementById('image-container');
    image.remove();
    document.body.appendChild(image);
* Make the page title red (by adding a class to the page title)
    var redTitle = document.getElementById('page-title');
    redTitle.setAttribute('style', 'color:red;');
* Make the list items blue (add classes to each list item, not to the ul element)
    
* Make the description green
* Add a red footer paragraph to the page with the id "page-footer"
* Instead of having that starter HTML in the page, write JavaScript to **construct** this page
