require 'spec_helper'

describe User do
  
   before(:each) do
     @attr = { :name => "Example User", :email => "user@example.com", :password => "password", :password_confirmation => "password" }
   end
 
  it "should create a new instance given valid attributes" do
    User.create!(@attr)
  end
  
  it "should require a name " do
    no_name_user = User.new(@attr.merge(:name=>''))
    no_name_user.should_not be_valid
  end
  
  it "should reject names that are too long" do
    long_name = "a" * 51
    long_name_user = User.new(@attr.merge(:name=>long_name))
    long_name_user.should_not be_valid
  end
 
end
