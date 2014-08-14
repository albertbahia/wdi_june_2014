Morning Exercise 08-02

#### Learning Objectives
- Practice using jQuery to manipulate the DOM
- Practice using jQuery Events
- Practice using the Event Object

# Ice Sheen Panda

### Step 1

Use jQuery to create 3 images and append them to the body. 

- The image sources should be one of the following:
  - http://nicenicejpg.com/200/200
  - http://placesheen.com/200/200
  - http://media.npr.org/assets/img/2012/01/04/ap99121501386_custom-feedbb6efa738efee47e7828e805758dc427fa60-s6-c30.jpg
- Give the first image a class of `ice`
- Give the second image a class of `sheen`
- Give the third image a class of `panda`

### Step 2

Look through the documentation on the mouse event method [pageX](http://api.jquery.com/event.pageX/)

Create an h1 tag and append it to the body. Define a mousemove event on the body of the document. The function defined for the mouse event should have a single parameter, an event object. On mousemove, set the text of the h1 to be the X and Y coordinates of the mouse

### Step 3

Modify your code so that on mousemove the top margin and left margin of the first image changes by a factor of the Y-coordinate and X-coordinate respectively.