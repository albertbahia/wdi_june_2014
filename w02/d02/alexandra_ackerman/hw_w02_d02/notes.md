#Notes for HW_W02_D02
##Notes on Army Class:

I noticed these members are often repeated to test the methods attack, defeated?, clear_bodies and living_members:

jon = Human.new('Jon Snow', 'Watch', 5)
ghost = Beast.new('Ghost', 'Watch', 5)
ned = Human.new('Ned', 'Stark', 10)
robb = Human.new('Robb', 'Stark', 10)

Is there is a way to DRY up that code by making some more let statements at the top of the spec? Instead of having to repeat it so many times?

In the attack method, there are tests I see (&hp).reduce(:+), I would like to see how this is explained more. I'm not quite sure what is happening here.

The last thing I'm curious about is what 10.times do does for the attacking living members does. Overall I am most confused about the whole attack method specs within this document.
