require 'spec_helper'

describe Category do
  
  before(:each) do
    @category = Factory(:category)
  end

  it "should create a new instance given valid attributes" do
    @category_attributes = Factory.attributes_for(:category)
    @category_from_attributes = Category.create(@category_attributes)
    @category_from_attributes.should be_valid
  end
  
  it "should be valid" do
    @category.should be_valid
  end
    
  it { should validate_presence_of(:name) }
  
  it "should validate maximum length of :name is 30" do
    @category.name = "1234567890123456789012345678901"
    @category.should_not be_valid
  end
  
end
