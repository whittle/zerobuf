Given /^I have defined (\w+) in (\w+)$/ do |class_name,file_name|
  require File.expand_path "../../examples/#{file_name}", File.dirname(__FILE__)
end
