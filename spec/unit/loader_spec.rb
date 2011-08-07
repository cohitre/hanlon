require 'spec_helper'

describe Hanlon::Loader do
  describe '#add_method' do
    it 'should add a method to the methods hash' do
      loader = Hanlon::Loader.new
      loader.add_method :headline do
        'headline'
      end
      loader[:headline].should be_a Proc
    end
  end

  describe '#build' do
    it 'should return a module with the defined methods' do
      loader = Hanlon::Loader.new
      loader.add_method :headline do
        'headline'
      end
      loader.add_method :paragraph do
        'bogus'
      end
      mod = loader.build
      mod.should be_a Module
      ModuleHelper = mod
      class ModuleTester
        include ModuleHelper
      end
      ModuleTester.new.paragraph.should == 'bogus'
      ModuleTester.new.headline.should == 'headline'
    end
  end
end
