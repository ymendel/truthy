require File.dirname(__FILE__) + '/spec_helper.rb'

describe 'truthiness' do
  
  specify 'false should not be truthy' do
    false.should_not be_truthy
  end
  
  specify 'nil should not be truthy' do
    nil.should_not be_truthy
  end
  
  specify 'true should be truthy' do
    true.should be_truthy
  end
  
  specify 'a string should be truthy' do
    'this is a string'.should be_truthy
  end
  
  specify 'even an empty string should be truthy' do
    ''.should be_truthy
  end
  
  specify 'a string containing nothing but whitespace should still be truthy' do
    '   		  '.should be_truthy
  end
  
  specify 'a number should be truthy' do
    1.should be_truthy
  end
  
  specify 'zero is truthy' do
    0.should be_truthy
  end
  
  specify 'infinity is totally truthy' do
    (1.0/0.0).should be_truthy
  end
  
  specify 'even a negative number is truthy' do
    -5.should be_truthy
  end
  
  specify 'an array should be truthy' do
    ['a', 1].should be_truthy
  end
  
  specify 'an empty array is truthy' do
    [].should be_truthy
  end
  
  specify 'an array containing only non-truthy elements: still truthy' do
    [nil, false].should be_truthy
  end
  
  specify 'a hash is truthy' do
    { 'a' => 1 }.should be_truthy
  end
  
  specify 'an empty hash is truthy' do
    {}.should be_truthy
  end
  
  specify 'an hash containing only non-truthy things: still truthy' do
    { nil => false }.should be_truthy
  end
  
  specify 'an object is truthy' do
    Object.new.should be_truthy
  end
  
end
