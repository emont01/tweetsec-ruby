# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
	Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
	$stderr.puts e.message
	$stderr.puts "Run `bundle install` to install missing gems"
	exit e.status_code
end
require 'rake'

require 'juwelier'
Juwelier::Tasks.new do |gem|
	# gem is a Gem::Specification... see http://guides.rubygems.org/specification-reference/ for more options
	gem.name = "tweetsec-ruby"
	gem.homepage = "http://github.com/emont01/tweetsec-ruby"
	gem.license = "MIT"
	gem.summary = %Q{TODO: one-line summary of your gem}
	gem.description = %Q{TODO: longer description of your gem}
	gem.email = "e.mont01@gmail.com"
	gem.authors = ["Eivar Montenegro"]

	# dependencies defined in Gemfile
end
Juwelier::RubygemsDotOrgTasks.new

##
# Rdoc task
##
require 'rdoc/task'
Rake::RDocTask.new do |rdoc|
	version = File.exist?('VERSION') ? File.read('VERSION') : ""

	rdoc.rdoc_dir = 'rdoc'
	rdoc.title = "tweetsec-ruby #{version}"
	rdoc.rdoc_files.include('README*')
	rdoc.rdoc_files.include('lib/**/*.rb')
end

##
# Test tasks
##
task :test => [:features, :unit_test] do
	puts "For unit test only use :unit_test, for features use :features"
end

##
# Unit test tasks
##
require 'rake/testtask'
Rake::TestTask.new(:unit_test) do |test|
	test.libs << 'lib' << 'test'
	test.pattern = 'test/**/test_*.rb'
	test.verbose = true
end

##
# Features task
##
require 'cucumber/rake/task'
Cucumber::Rake::Task.new(:features) do |features|
end

desc "Code coverage detail"
task :simplecov do
	ENV['COVERAGE'] = "true"
	Rake::Task['test'].execute
end

task :default => :test
