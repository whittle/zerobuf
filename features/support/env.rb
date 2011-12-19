require 'rubygems'
require 'bundler'
require 'cucumber'
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

World RR::Adapters::RRMethods
After { RR.verify }

Debugger.start  if $debugger

require 'zerobuf'
