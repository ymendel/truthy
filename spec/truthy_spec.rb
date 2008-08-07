require File.dirname(__FILE__) + '/spec_helper.rb'

describe 'truthiness' do
  
  specify 'false should not be truthy' do
    false.should_not be_truthy
  end
  
end
