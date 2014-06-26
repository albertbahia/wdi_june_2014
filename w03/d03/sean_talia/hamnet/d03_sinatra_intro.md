Homework 03-03

#### Learning Objectives
- Practice working with a web framework
- Practice creating a local web server
- Practice designing routes to respond to requests
- MAKE THE INTERNET!!!

Last weekend HAMco found out about this new thing called the "Internet".
We've started working on Tun.r but we need a product to ship out now before the
Internet gets too big and becomes uncool.

Your assignment for tonight is to build HAMco's first web app: HAMnet

# HAMnet
### Step 1

Create a new web app using Sinatra. Your server should start with a single route for a welcome page `/welcome`
When a user navigates to the welcome page they should see:
- a title
- a link that when pressed will return them to the home page
- a list of clickable links
  - Calculator
  - Magic 8 Ball
  - Tip Calculator

### Step 2 - Calculator
Define a calculator route. When the user clicks the Calculator link they should
be taken to this route and the following should be displayed:
- a title showing what page the user is on
- a link that when pressed will return them to the homepage
- a form that prompts the user for three inputs
  - their first number
  - math operation to perform
  - their second number

When the user submits the form they should be taken to another page that will
display the results of the math operation they performed. On this results page
there should be a link that allows the user to go back to the main calculator
page to perform more calculations.

### Step 3 - Magic 8 Ball
Define a magic eight ball route. When the user clicks the Magic 8 Ball link
they should be taken to this route and the following should be displayed:
- a title showing what page the user is on
- a link that when pressed will return them to the homepage
- instructions on how to submit a question
  - to submit a question the user must put their question in the url bar as
  such: `localhost:4567/magic/Will%20I%20survive`
  - Spaces must be 'escaped' using `%20`
  - What is 'escaping'? [Let me google that for you](http://lmgtfy.com/?q=html+url+encoding)

When a question is submitted the user should be taken to a page with the answer.
This page should display the following:
- A title showing what page the user is on
- a link that when pressed will return them to the magic 8 ball page
- The question that was asked
- A random magic 8 ball answer
```ruby
"It is certain", "It is decidedly so", "Without a doubt", "Yes definitely","You may rely on it", "As I see it yes", "Most likely", "Outlook good","Yes", "Signs point to yes", "Reply hazy try again", "Ask again later","Better not tell you now", "Cannot predict now", "Concentrate and ask again","Don't count on it", "My reply is no", "My sources say no","Outlook not so good", "Very doubtful"
```

### Step 4 - Tip Calculator
Define a tip calculator route. When the user clicks the Tip Calculator link
they should be taken to this route and the following should be displayed:
- A title showing what page the user is on
- A link that when pressed will return them to the homepage

- Instructions on how to find their suggested tipping value
  - to submit a tip query they user must put the values in the url bar
  (whole numbers please) separated by a `/`
-`localhost:4567/tip/100/20`

When it is submitted the user should be taken to a page with the following
information displayed:
- The original amount
- The tip percentage
- The amount for a tip
- a link that when pressed will return the user to the tip calculator page
