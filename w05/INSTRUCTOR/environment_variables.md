### Environment Variables and Rails

#### Environment Variables

You can create environment variables straight in your terminal window, like so.

```
export VAR_NAME="variable value"
```

However, if we run this command in a terminal window, that variable will only
live inside **that** specific terminal window.

Our bash profile (`~/.bash_profile`) is a file on our computer where we can
write bash scripting commands that will be executed whevener a new terminal
window is opened. Think of it as an initializer script. This is a good place
to declare environment variables to ensure they are available on our machine
in every terminal window we ever open.

#### Rails

A Rails app has access to the environment variables that exist in the environment
that the rails server is running in. We can access them as follows.

If in our bash profile, we have the following command,

```
export YELP_API_KEY="j843905894jf9834jq0jffnsldfnaw03rj"
```

then in our Rails application, we can refer to this value as follows.

```ruby
ENV["YELP_API_KEY"] #=> 'j843905894jf9834jq0jffnsldfnaw03rj'
```

#### Heroku

If our API keys and other information live on our local machine now, then it
becomes our job to configure our Heroku server correctly to ensure that our
Rails app will function correctly once deployed as well. We cannot open up the
bash profile on the remote Heroku machine where our Rails app is running, but
Heroku gives us some commands that let us set environment variables on their
remote servers. Check out [the Heroku docs]() for details on how to do this.

#### Additional Resources

* [Rails secrets](http://edgeguides.rubyonrails.org/4_1_release_notes.html#config/secrets.yml)
* [Figaro](https://github.com/laserlemon/figaro)
* [Dotenv](https://github.com/bkeepers/dotenv)
