require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  
  # Test validations
  should_validate_presence_of :name, :description, :address1, :city, :county, :postcode, :email, :phone

  context "A Company instance" do
    setup do
      @company = Factory(:company)
    end
    
    should "be a valid object" do
      assert_valid @company      
    end
    
    should "default to unapproved" do
      assert !@company.approved?
    end
  end
end
