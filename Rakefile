require 'rake'
require 'rake/testtask'
require 'robot-controller/tasks'
require 'bundler'
require 'rspec/core/rake_task'
require 'yard'
require 'yard/rake/yardoc_task'

# Import external rake tasks
Dir.glob('lib/tasks/*.rake').each { |r| import r }

task :default => :ci  

desc "run continuous integration suite (tests, coverage, docs)" 
task :ci => [:rspec, :doc]

desc "Run RSpec with RCov"
RSpec::Core::RakeTask.new(:rspec) do |t|
    t.pattern = 'spec/**/*_spec.rb'
    t.rspec_opts = ["-c", "-f progress", "--tty", "-r ./spec/spec_helper.rb"]
end

desc 'Get application version'
task :app_version do
  puts File.read(File.expand_path('../VERSION',__FILE__)).chomp
end

task :environment do
  require_relative 'config/boot'
end

# Use yard to build docs
begin
  project_root = File.expand_path(File.dirname(__FILE__))
  doc_dest_dir = File.join(project_root, 'doc')

  YARD::Rake::YardocTask.new(:doc) do |yt|
    yt.files = Dir.glob(File.join(project_root, 'lib', '**', '*.rb')) +
                 [ File.join(project_root, 'README.rdoc') ]
    yt.options = ['--output-dir', doc_dest_dir, '--readme', 'README.rdoc', '--title', 'WAS Registrar Documentation']
  end
rescue LoadError
  desc "Generate YARD Documentation"
  task :doc do
    abort "Please install the YARD gem to generate rdoc."
  end
end  