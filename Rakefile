require 'rake'
require 'rspec/core/rake_task'

$LOAD_PATH.unshift( File.join(File.dirname(__FILE__), 'lib') )

require 'mars'
 
RSpec::Core::RakeTask.new(:spec) 
 
task :default  => :spec
