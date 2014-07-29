Homework 08-02

#### Learning Objectives
- Practice integerating JavaScript into a Rails App
- Use JavaScript and AJAX to interface with the Back-End
- Use AJAX to update existing entries in the database
- Use jQuery to update DOM elements that have been edited

Tonight you will continue working on HAMterest!

# Step 1

Define the update action on your Posts controller to update an object and return that object as `json` to the Front-End

# Step 2

Provided for you is the css and boilerplate code for creating a modal. Look through the `application.html.erb` to get an idea of what elements are available to you.
Feel free to add any other attributes that might help you along the way.

__BUT WHAT IS A MODAL!??!__ [modals](http://en.wikipedia.org/wiki/Modal_window)


__HOW WILL I MAKE IT?!?__
##### You will need to utilize the `.show()` and `.hide()` jQuery methods
- The modal window is by default set to be hidden.
- When the image of a card is clicked, the modal window should appear on the screen.
- When the `close` button is clicked the modal window should again be hidden from view

# Step 3

Once you are able to make your modal window appear and disappear:

#### Card-Info Div
- Whatever image was clicked to make the modal appear should be shown in the `card-info` div of the modal

#### Card-Update Div
- When the modal appears there should be 4 inputs and a button in this div
  - Title input
  - Image URL input
  - Content input
  - Category input
- The value of the inputs should be whatever information was being displayed in the card that was clicked

# Step 4

Once you are able to view your modal with the chosen card image and the necessary inputs:

- When the update button is clicked:
  - The database should be updated with the new information
  - The card on the screen should be updated
  - The modal window should disappear



 