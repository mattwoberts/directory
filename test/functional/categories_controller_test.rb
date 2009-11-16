require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  context "a category" do
    setup do
      @category = Factory(:category)
    end
    
    context "GET shows reord" do
      setup do 
        get :show, :id => @category.id
      end
      should_respond_with :success
      should_render_template :show
      should_not_set_the_flash
    end
  end
end
