load 'main.rb'
require 'test/support/rspec/spec_helper'
require 'test/support/stdout_helper'

module GuardExample
  describe Foo do
    context 'after required' do
      it 'exposes the #bar method' do
        captured_output = capture_stdout { Foo.bar }
        expected_output = %{THIS IS MY LIBRARY, WITH A CORRESPONDING SPEC AT ./test/spec/lib/guard_example/foo_spec.rb!}
        expect(captured_output).to match(expected_output)
      end
    end
  end
end

