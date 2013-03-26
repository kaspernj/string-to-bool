require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "StringToBool" do
  it "should work" do
    trues = ["true", "t", "1", "TruE", "y", "yes"]
    falses = ["false", "f", "", "0", "no", "n"]
    
    trues.each do |true_str|
      true_str.to_bool.should eql(true)
    end
    
    falses.each do |false_str|
      false_str.to_bool.should eql(false)
    end
  end
end
