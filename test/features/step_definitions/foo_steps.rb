require 'active_support/inflections'
require_relative '../../../lib/guard_example/foo'
require_relative '../../../test/support/stdout_helper'

Given /^an object "(.+)"$/ do |klazz|
  @object = klazz.constantize
end

When /^executing method "(.+)"$/ do |method|
  @output = capture_stdout { @object.send(method) }
end

Then /^output matches "(.+)"$/ do |target|
  expect(@output).to match(target)
end