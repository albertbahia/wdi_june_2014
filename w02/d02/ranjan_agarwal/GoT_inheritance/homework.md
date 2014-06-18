# Homework

### Army.rb
1. What are the .select and .reject! methods? I'm guessing it's selecting a a certain member(living) and rejecting the dead members.
2. So if what I mentioned above is right, defeated? means if all members are dead, your army is defeated.
3.  What is .sample?
4.  Why are we .sampling the other armies .sample


### army_spec.rb
1. First it is empty. Does it need to be?
2. describe '#size' do
    it 'returns the size of the army' do
      expect(north.size).to eq(4)
    end
  end
  Shouldn't it be 5 since the original array has 4 members?
  3. Why are we calling jon, ghost etc if we have an array on top
  4.  What is the 10.times do for?
  5. What is the reduce(:+)

### Battle.rb
1. what is temp for?
2. Is living_members from army.rb? Why aren't we calling army.rb in the battle.rb?


### Battle_spec.rb
1. Why is there no spec?!?!
