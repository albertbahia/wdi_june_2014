require 'active_record'
ActiveRecord::Base.establish_connection({
  database: 'wdinsta_db'
  adapter: 'postgresql'
})

TRUNCATE images;

require_relative '../models/image'

INSERT INTO images(author, image_url, date_posted, caption) VALUES ('Liza Ramo', 'http://media.giphy.com/media/OJH9JBgtLgV3i/giphy.gif', 2014, 'McKenneth as a kitteh.');
INSERT INTO images(author, image_url, date_posted, caption) VALUES ('Liza Ramo', 'http://media.giphy.com/media/G7kdzIwqKmZxu/giphy.gif', 2013, 'Peekaboo.');
INSERT INTO images(author, image_url, date_posted, caption) VALUES ('Liza Ramo', 'http://media.giphy.com/media/PylVMoPtKUCSk/giphy.gif', 2013, 'Snur.');
INSERT INTO images(author, image_url, date_posted, caption) VALUES ('Liza Ramo', 'http://media.giphy.com/media/VZz7pgW3AMdZC/giphy.gif', 2012, 'Imma getchu.');
INSERT INTO images(author, image_url, date_posted, caption) VALUES ('Liza Ramo', 'http://giphy.com/gifs/YVOVzR5b0IU8M', 2012, 'Roley poley.');
