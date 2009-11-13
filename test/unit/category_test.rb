require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  
  should_validate_presence_of :name
  should_validate_uniqueness_of :name
  
  context "The category object" do
    setup do
      @category = Factory(:category)
    end
    
    should "be a valid company" do
      assert_valid @category
    end
    
    should "fail when name is longer than 30 chars" do
      @category.name = "0123456789012345678901234567891"
      assert !@category.valid?
    end
  end
  
end
