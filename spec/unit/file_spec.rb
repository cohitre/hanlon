require 'spec_helper'

describe Hanlon::File do
  describe '#load' do
    it 'should load a file and return a module' do
      mod = Hanlon::File.load("#{File.dirname(__FILE__)}/../templates/greetings")
      mod.should be_a Module
    end
  end
end
