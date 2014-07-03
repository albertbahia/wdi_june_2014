![Game of Thrones](http://www.chicagonow.com/fanning-flames-since-1978/files/2014/04/game-of-thrones.jpg)

# Kings, Knights, and Peasants

#### Learning Objectives

* Practice implementing inheritance in Ruby
* Test-driven development with Rspec

## Before you begin:

Before working on this homework, you should make sure you have completed last
night's HW. This means ALL TESTS MUST PASS. If they don't, FIX THEM before you
proceed.

This exercise will build off of last night's HW, so if it's not complete, you're
gonna have a bad time!

## Goal

This afternoon, we are going to refine our model of Humans to include Kings,
Knights, and Peasants, using inheritance to ensure our code stays DRY.

All three are types of humans, so think about how you'll use inheritance to
model this.

Kings, Knights, and Peasants each have new / different attributes and behaviors
compared to generic Humans. Instead of telling you about them here, we're going
to describe them using RSpec spec files.


### Step 1

Read the spec file for the Peasant class, and understand how peasants are
different from humans.

### Step 2

Notice how we wrote RSpec examples (`it` blocks) but didn't write the tests.
That's your next job.

Write an appropriate test for the first example (`it` block), and then make it
pass.

Repeat until you've written all the tests for the peasant spec, and made them
pass.

### Step 3

Repeat for Kings and then Knights.
