# Welcome to the Chord Commerce Pairing Exercise

## Instructions
The goal of the exercise is to make all the failing.  You can do it exercise in either Javascript or Ruby.

### Javascript

To get the tests running in Ruby:

1. `cd javascript`
2. Run `make bootstrap` (`npm install`) to setup your environment.  This doesn't install Node or
   npm – you may need to set these up yourself
3. Run `make test` (`npm test`) – you should see many failing tests. The tests live in
   `test/index.spec.js`. Start at the top of the file, and make each test pass
   by implementing the methods defined in `lib/index.js`. The exercise is
   complete when all tests pass.

### Ruby

To get the tests running in Ruby:

1. `cd ruby`
2. Run `make bootstrap` (`bundle install`) to setup your environment. This doesn't install Ruby or
   Bundler – you may need to set these up yourself.
3. Run `make test` (`bundle exec ruby test/test_unit.rb`) – you should see many failing tests. The tests live in
   `test/test_unit.rb`. Start at the top of the file, and make each test pass
   by implementing the methods defined in `lib/exercise.rb`. The exercise is
   complete when all tests pass.
