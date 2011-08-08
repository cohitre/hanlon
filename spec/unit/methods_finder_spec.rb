require 'spec_helper'

describe Hanlon::MethodsFinder do
  describe "#find" do
    it 'should return a list of methods in a template' do
      engine = Haml::Engine.new template("math.hanlon")
      Hanlon::MethodsFinder.find(engine).should =~ ['add', 'substract', 'operation']
    end
  end
end
