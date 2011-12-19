require 'rubygems'
require 'bundler'
require 'rspec'
require 'fabrication'
require 'faker'
require 'rr'

begin
  require 'ruby-debug'
  $debugger = true
rescue LoadError
  $debugger = false
end

RSpec.configure do |config|
  config.color_enabled = true
  config.mock_with :rr
end

Debugger.start  if $debugger

require 'zerobuf'
