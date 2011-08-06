require 'bundler'
Bundler::GemHelper.install_tasks

require "rspec/core/rake_task"
namespace :spec do
  types = [:unit, :acceptance]

  types.each do |type|
    desc "Run #{type} specs only"
    RSpec::Core::RakeTask.new(type) do |spec|
      spec.pattern = "spec/#{type}/**/*_spec.rb"
    end
  end

  desc "Run All Specs"
  task :all => types
end

task :spec => ['spec:all']
task :default => :spec
