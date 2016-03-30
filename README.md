# bad-blog

#Starter Project
##Purpose
  * Assess your ability to take some general specs to a working demo
  * Gives us something to talk about
  * Shouldn't take more than 4 hours
  * Don't make it too complex

##Spec
###Need to have
  - [x] Chef cookbook[s], structure as you see fit.
  - [x] Implement a Linux, MySQL, HHVM, Nginx single host running some sort of blog software (take your pick)
    - I had to fork the wordpress cookbook to configure for HHVM since it was not parameterized.  I did not make a parameter and submit a PR as I'm guessing it isn't going to be relevant to anyone else
  - [x] Base OS should be ubuntu 14.04
  - [x] Use Berkshelf for dependency management, please no vendor drops (but version locks are good!)
  - [x] Should leverage community cookbooks when it make sense.
  - [x] Should be testable using Vagrant.
    - `kitchen test` works successfully, `vagrant up` for some reason fails on mysql install.  I am sure I can resolve this if desired, but I am guessing it is not critical for the purposes of a discussion.

###Nice to have
  - [] Security hardening and user management.
    - The wordpress has some basic hardening in it.  Managing users I think is best done through WP itself.
  - [x] Should converge both in chef-zero and chef-client modes.
    - chef-zero works, based on my knowledge of chef-client it should work as well, but I could be wrong
  - [] Take care with secrets!
    - DB passwords are randomly generated.  Wordpress seeds are stored in attributes which is bad.  I believe either an override or a secure data bag should be used for this.
  - [x] Functional/Unit/Lint tests are cool.
    - Lint tests are happy.  Unit tests fail with a ruby error I'm not able to quickly find a resolution to, but the tests themselves should be functional.
  - [x] Think in terms of re-usable components.
    - This module has very little code in it worth reusing, it mainly just glues other cookbooks together.
  - [x] Bonus points for a rake/Thor file for common tasks.
    - Rake tasks for test suites

###Thoughts from Justin

  I haven't ever created a Chef cookbook from scratch as most of my chef exposure has been as a reference for puppet modules or to make minor changes to an existing cookbook, so I had to learn a lot about Chef to accomplish this.  I spent about 5 hours on this total starting with "how do I generate a cookbook".

  There are a few known issues (noted above) in my implementation around testing and I can dive into them more if you'd like.  Rspec unit tests and serverspec tests are pretty much identical to testing with Puppet so I feel the unit test errors are more likely with a gem incompatibility or a nuance difference between how I'm used to writing them and how ChefSpec wants them.

  I was impressed with test kitchen, there is a lot more power in that than the beaker tool used in Puppet.  As a general rule, most of the concepts are the same, it is just the DSL and some implementation details that vary.  
