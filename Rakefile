require 'rubygems'
require 'bundler'
require 'rake/testtask'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run 'bundle install' to install missing gems"
  exit e.status_code
end

Bundler::GemHelper.install_tasks

desc 'Default: run unit tests.'
task :default => :test

desc 'Test the app_config plugin.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.pattern = 'test/**/*_test.rb'
  t.verbose = true
end

desc 'Deletes pkg directory'
task :clean do
  sh 'rm -rf pkg' do |ok, res|
    puts "pkg directory could not be cleaned: #{res}" unless ok
  end
end
