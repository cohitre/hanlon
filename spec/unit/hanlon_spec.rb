require 'spec_helper'

describe Hanlon do
  before :all do
    class RobHanlon
      include Hanlon
      load_template template('math.hanlon')
    end
  end
  it 'should add some methods when included in a class' do
    RobHanlon.should respond_to :load_template
    RobHanlon.new.should respond_to :execute_hanlon
    RobHanlon.new.should respond_to :hanlon
  end

  it 'should load hanlon methods' do
    RobHanlon.new.should respond_to :substract
    RobHanlon.new.should respond_to :add
    RobHanlon.new.should respond_to :operation
  end

  it 'should execute the hanlon methods without error' do
    RobHanlon.new.add(1, 4).should == "<p><span class='operations'>1 + 4 =</span><span class='result'>5</span></p>\n"
  end
end
