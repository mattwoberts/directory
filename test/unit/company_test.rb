require 'test_helper'

class CompanyTest < ActiveSupport::TestCase
  
  should_validate_presence_of :name, 
                              :description,
                              :address1,
                              :city,
                              :county,
                              :postcode,
                              :email,
                              :phone

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


class CompaniesControllerTest < ActionController::TestCase
  context "on GET to :show for first record" do
    setup do
      get :show, :id => 1
    end

    should_respond_with :success
    should_render_template :show
    should_not_set_the_flash

  end
end
