alias be="bundle exec"
alias bi="bundle install --jobs=8"
alias migrate="bundle exec rake db:migrate && bundle exec rake db:migrate RAILS_ENV=test"
alias rollback="bundle exec rake db:rollback && bundle exec rake db:rollback RAILS_ENV=test"

# Increase default amount of memory given to ruby processes
export RUBY_GC_HEAP_INIT_SLOTS=5000000 #Heap is the number of memory slots allocated to the ruby process.
export RUBY_GC_MALLOC_LIMIT=50000000 # How many data structures before garbage collector is triggered
export RUBY_HEAP_SLOTS_INCREMENT=1000000 # How many slots to allocate when all initial slots are used
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1 #Prevent asking for exponential amounts of memory

# Rbenv setup
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/bin:$PATH"
eval "$(rbenv init -)"

