

<% @api_call.each do |search_result| %>

  <p>Title: <%= search_result["trackName"] %></p>
  <p>Album: <%= search_result["collectionName"] %></p>
  <p>Preview URL: <%= search_result["previewUrl"] %></p>
  <p>Artist ID: <%= search_result["artistId"] %></p>
  <p>Price: <%= search_result["trackPrice"] %></p>

<% end %>
