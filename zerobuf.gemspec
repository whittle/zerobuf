# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'zerobuf/version'

Gem::Specification.new do |s|
  s.name        = 'zerobuf'
  s.version     = Zerobuf::VERSION
  s.authors     = ['Jason Whittle']
  s.email       = ['jason.whittle@gmail.com']
  s.homepage    = 'https://github.com/whittle/zerobuf'
  s.summary     = 'A tiny ruby gem for communicating in Protobuf over ZeroMQ'
  s.description = 'Binds together 0MQ socket descriptions, Protobuf '\
                  'message types and a handler methods for easy use.'

  s.rubyforge_project = 'zerobuf'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency 'ffi-rzmq'
  s.add_runtime_dependency 'ruby_protobuf'

  s.add_development_dependency 'cucumber'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rr'
  s.add_development_dependency 'fabrication'
  s.add_development_dependency 'faker'
  s.add_development_dependency 'ruby-debug'
  s.add_development_dependency 'guard'
  s.add_development_dependency 'guard-bundler'
  s.add_development_dependency 'guard-cucumber'
  s.add_development_dependency 'guard-rspec'
end
