source 'https://rubygems.org'

gem 'addressable'    
gem 'dor-services', '~> 4.21.4'
gem 'lyber-core'
gem 'robot-controller', '~> 2.0.3'  # requires Resque
gem 'pry', '~> 0.10.0'          # for bin/console
gem 'slop', '~> 3.5.0'          # for bin/run_robot
gem 'rake'
gem 'yard'
gem 'rspec'

group :development, :test do
  if File.exists?(mygems = File.join(ENV['HOME'],'.gemfile'))
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
  gem 'lyberteam-capistrano-devel'
end