source 'https://rubygems.org'

gem 'dor-services', '~> 5.8', '>= 5.8.1'
gem 'lyber-core', '~> 4.0', '>= 4.0.3'
gem 'robot-controller', '~> 2.0.4'  # requires Resque
gem 'pry', '~> 0.10.0'              # for bin/console
gem 'slop', '~> 3.5.0'              # for bin/run_robot
gem 'rake'
gem 'yard'
gem 'rspec'

group :development, :test do
  if File.exist?(mygems = File.join(ENV['HOME'], '.gemfile'))
    instance_eval(File.read(mygems))
  end
  gem 'awesome_print'
  gem 'debugger', :platform => :ruby_19
  gem 'holepicker', '~> 0.3', '>= 0.3.3'
  gem 'coveralls', require: false
end

group :deployment do
  gem 'capistrano'
  gem 'capistrano-bundler'
  gem 'dlss-capistrano'
end
