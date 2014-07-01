# Gifbomb

Create a new sinatra app.

#### Part 1

Define a route `/` that when visited this route should display 10 random gifs
from the Giphy API. Each gif should: - show the original-sized gif
- a link that can be clicked and will take the user to the giphy page for the gif
- a plaintext link for the gif image (for easy pasting into hipchat)

#### Part 2

On your homepage add a search form with one input. When this form is submitted
it should search the Giphy API for the term selected by the user.
Define a second route `/search` that will perform the API search and display
the results to the user. This page should have a link to go back to the homepage to search again.

#### Part 3 (bonus)

On your homepage add 4 links:
- Kittens
- Puppies
- Pokemon
- Pandas

When a user clicks one of the links, they should be taken to a page that will display the results of searching the Giphy API for that term.
