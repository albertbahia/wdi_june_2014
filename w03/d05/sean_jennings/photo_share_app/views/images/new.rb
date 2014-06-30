require 'pry'

<form method="post" action="/images">
  <label for="image[author]">Author:</label>
  <input name="image[author]" placeholder="author">

  <label for="image[img_url]">Image URL:</label>
  <input name="image[img_url]" placeholder="url">

  <label for="image[date_posted]">Date Posted:</label>
  <input name="image[date_posted]" placeholder="date">

  <label for="image[caption]">Caption:</label>
  <input name="image[caption]" placeholder="caption">

  <input type="submit" value="Create">
</form>

binding.pry
