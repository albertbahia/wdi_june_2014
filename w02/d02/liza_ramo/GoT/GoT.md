![Game of Thrones](http://www.chicagonow.com/fanning-flames-since-1978/files/2014/04/game-of-thrones.jpg)

# Valar Still Morghulis

#### Learning Objectives

* Practice with OOP in Ruby
* Test-driven development with Rspec

Our lab and homework for today will be to model the wonderful world of rainbows and ponies and happiness and violence and death called **Game of Thrones**. We're going to be modeling the humans and beasts of Westeros so we can pit them against each other. We are also going to test, test, test along the way in true TDD spirit.

We are going to model humans and beasts. Refer to the specs provided in the `w02/d01/ASSIGNMENT_FILES/GoT/` folder.

**Make sure to COPY this folder into your own folder BEFORE starting work!**

You will find

* lib/
  * beast.rb
  * human.rb
* spec/
  * beast_spec.rb
  * human_spec.rb
  * spec_helper.rb (this came from Rspec)
* .rspec (this came from Rspec)

Make sure to copy the entire folder and not individiual files, so that the rspec files (spec_helper.rb and .rspec) are copied to your folder as well.

#### Step 1

Run the tests and watch them fail.

#### Step 2

Start with the Beast class.

* Look at the specs specified in `beast_spec.rb`
* Follow the cycle of red-green-refactor to get all the `Beast` tests to pass

#### Step 3

Move on to the Human class

* Look at the specs specified in `human_spec.rb`
* Follow the cycle of red-green-refactor to get all the `Human` tests to pass

#### Step 4

**Mandatory reading**

Read [Better Specs](http://betterspecs.org/) up to (and including) the section of `let` and `let!` to further your conceptual understanding of testing and Rspec.
