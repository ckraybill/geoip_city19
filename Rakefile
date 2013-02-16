require 'bundler/gem_tasks'
require 'rake/testtask'
require 'rdoc/task'
require 'rake/extensiontask'

task :default => [:compile, :test]

Rake::RDocTask.new do |rdoc|
  rdoc.rdoc_files.add ['README', 'ext/geoip_city/geoip_city.c']
  rdoc.main = "README" # page to start on
  rdoc.rdoc_dir = 'doc/' # rdoc output folder
end

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.verbose = true
end

Rake::ExtensionTask.new('geoip_city')
