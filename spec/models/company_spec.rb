require 'spec_helper'

describe Company do
  before(:each) do
    @company = Factory(:company)
  end

  it "should create a new instance given valid attributes" do
    @company_attributes = Factory.attributes_for(:company)
    Company.create!(@company_attributes)
  end
end
