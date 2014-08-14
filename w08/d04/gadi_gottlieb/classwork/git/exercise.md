# Git Flow Exercise

This exercise should be done in your project teams. Designate one person as the
repo owner.

## Steps

1. A member should create a repo, adds a blank rails app to it (don't forget to
   use postgres), and invites their team  members as collaborators.
2. The 'owner' should create a development branch.
3. Use the git flow workflow to create a one model crud app to manage memes.
   Features: index, show, new/create, destroy (if 4 people on team).
   Attributes: name, humor_level (int), image_url
4. Each member should make their own feature branch, and merge it into develop
   when they are done.
5. When all features are complete, the owner should create a release branch from
   development.
6. Fix any bugs on the relase branch, and then merge it into master and
   development.
6. Tag the master branch with a 1.0 tag! You're done!

Bonus: Deploy app to heroku.
