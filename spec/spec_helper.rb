# Make sure specs run with the definitions from test.rb
environment = ENV['ROBOT_ENVIRONMENT'] = 'test'

require 'coveralls'
Coveralls.wear!

bootfile = File.expand_path(File.dirname(__FILE__) + '/../config/boot')
require bootfile

require 'pry'
require 'rspec'
