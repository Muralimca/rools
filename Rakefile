require "bundler/gem_tasks"
require 'rake/testtask'

class RoolsTestTask < Rake::TestTask
    def initialize (name=nil)
        File.delete "engine.log" if File.exist? "engine.log"
        super(name)
    end
end

# Create a task for handling Unit Tests
RoolsTestTask.new(:test) do |t|
    t.libs << "test"
    t.test_files = FileList['test/rake_test.rb']
    t.verbose = true
end
