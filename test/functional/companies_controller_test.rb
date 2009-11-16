require 'test_helper'

class CompaniesControllerTest < ActionController::TestCase
  context "A company" do
    setup do
      @company = Factory(:company)
    end  

    context "on GET to :show for first record" do
      setup do
        get :show, :id => @company.id
      end
      should_respond_with :success
      should_render_template :show
      should_not_set_the_flash
    end

    context "on GET to :index" do
      setup do
        get :index
      end
      should_respond_with :success
      should_render_template :index
      should_not_set_the_flash
    end
    
    context "on GET to :edit" do
      setup do 
        get :edit, :id => @company.id
      end
      should_respond_with :success
      should_render_template :edit
      should_not_set_the_flash
    end
    
    context "POST :new" do
      setup do
        get :new
      end
      should_respond_with :success
      should_render_template :new
      should_not_set_the_flash
    end
    
    context "create with vaild attributes" do
      setup do
        company_attributes = Factory.attributes_for(:company)
        post :create, :company => company_attributes
      end
      should_set_the_flash_to /created/i
    end

    context "create with invalid attributes" do
      setup do
        company_attributes = { }
        post :create, :company => company_attributes
      end
      should_not_set_the_flash
    end
    
    context "some text" do
      setup do
        company_attributes = Factory.attributes_for(:company)
        put :update, :id => @company.id, :company => company_attributes
      end
      should_set_the_flash_to /update/i
    end
    
    context "some text" do
      setup do
        company_attributes = { :name => nil }
        put :update, :id => @company.id, :company => company_attributes
      end
      should_not_set_the_flash
    end
  end
end
