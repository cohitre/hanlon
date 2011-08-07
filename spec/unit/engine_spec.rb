require 'spec_helper'

describe Hanlon::Engine do
  describe '#process' do
    it 'should return a module with the defined methods' do
      engine = Hanlon::Engine.new %q<
- hanlon :greeting do |name|
  %p== hello #{name}.
- hanlon :headline do
  %h1 Headline>

      engine.module.should be_a(Module)
      engine.evaluate("= greeting 'Carlos'").should == "<p>hello Carlos.</p>\n"
      engine.evaluate("= headline").should == "<h1>Headline</h1>\n"
    end
  end
end
