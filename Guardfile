guard :bundler do
  watch 'Gemfile'
  watch /^.+\.gemspec/
end

guard :cucumber do
  watch %r{^features/.+\.feature$}
  watch(%r{^features/support/.+$}) { 'features' }
  watch(%r{^features/step_definitions/.+_steps\.rb$}) { 'features' }
end

guard :rspec, :version => 2 do
  watch %r{^spec/.+_spec\.rb$}
  watch(%r{^lib/(.+)\.rb$}) { |m| "spec/#{m[1]}_spec.rb" }
  watch('spec/spec_helper.rb') { 'spec' }
end
