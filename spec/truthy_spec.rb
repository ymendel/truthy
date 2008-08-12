require File.dirname(__FILE__) + '/spec_helper.rb'

describe 'truthiness' do
  
  specify 'false should not be truthy' do
    false.truthy?.should == false
  end
  
  specify 'nil should not be truthy' do
    nil.truthy?.should == false
  end
  
  specify 'true should be truthy' do
    true.truthy?.should == true
  end
  
  specify 'a string should be truthy' do
    'this is a string'.truthy?.should == true
  end
  
  specify 'even an empty string should be truthy' do
    ''.truthy?.should == true
  end
  
  specify 'a string containing nothing but whitespace should still be truthy' do
    '   		  '.truthy?.should == true
  end
  
  specify 'a number should be truthy' do
    1.truthy?.should == true
  end
  
  specify 'zero is truthy' do
    0.truthy?.should == true
  end
  
  specify 'infinity is totally truthy' do
    (1.0/0.0).truthy?.should == true
  end
  
  specify 'even a negative number is truthy' do
    -5.truthy?.should == true
  end
  
  specify 'an array should be truthy' do
    ['a', 1].truthy?.should == true
  end
  
  specify 'an empty array is truthy' do
    [].truthy?.should == true
  end
  
  specify 'an array containing only non-truthy elements: still truthy' do
    [nil, false].truthy?.should == true
  end
  
  specify 'a hash is truthy' do
    { 'a' => 1 }.truthy?.should == true
  end
  
  specify 'an empty hash is truthy' do
    {}.truthy?.should == true
  end
  
  specify 'an hash containing only non-truthy things: still truthy' do
    { nil => false }.truthy?.should == true
  end
  
  specify 'an object is truthy' do
    Object.new.truthy?.should == true
  end
  
end
