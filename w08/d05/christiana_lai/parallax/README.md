# Do you even parallax, bro?

### Part 1

* Alter the CSS so that the div with a class of `bg` containing the picture of the clouds is behind the cats, dogs and coral sections. You are going to have to change it's positioning.

  * [Positioning](https://developer.mozilla.org/en-US/docs/Web/CSS/position)
  * [Z-index](https://developer.mozilla.org/en-US/docs/Web/CSS/z-index)

### Part 2

Define a scroll event listener on the `window`

* To add a parallax effect change the `top` property of the background div with a class of `bg` by a factor of how far the user has scrolled. 
	HINT: Utilize the `.scrollTop()` jQuery method.
* Add more parallax effects by changing the `top` property of each of the images by a different factor of how far the user has scrolled. The kittens and puppies should move!
* Play with different scroll speeds and css effects!
