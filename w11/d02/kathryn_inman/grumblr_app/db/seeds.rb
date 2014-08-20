titles = ['baby\'s first grumble', 'another one', 'more complaints', 'what I talk about when I talk about grumbling', 'the fault in our grumbles', 'in which I eat a pint of cinnamon ice cream', 'twelve reasons I swear that was performance art','re: the neighbors and their ferret', 'are we done yet', 'NOPE', 'that gif of the octopus saying nope']

content = "A bootstrap is a small strap or loop at the back of a leather boot that enables you to pull the entire boot on In computers to bootstrap or to boot is to load a program into a computer using a much smaller initial program to load in the desired program which is usually an operating system In general usage bootstrapping is the leveraging of a small initial effort into something larger and more significant There is also a common expression pulling yourself up by your own bootstraps meaning to leverage yourself to success from a small beginning"

image = "http://placekitten.com/400/300"

avatar = "http://fc06.deviantart.net/fs71/f/2013/318/c/0/free_snuggly_icon___avatar___pikachu_by_sarilain-d6u902s.gif"

20.times do
  Grumble.create({
  author: 'anonymouse',
  content: content.split(' ').sample(30).join(' '),
  title: titles.sample(),
  image: image,
  avatar: avatar
  })
end
