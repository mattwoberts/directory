require 'spec_helper'

describe Company do
  
  before(:each) do
    @company = Factory(:company)
  end

  it "should create a new instance given valid attributes" do
    @company_attributes = Factory.attributes_for(:company)
    Company.create!(@company_attributes)
  end
    
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:address1) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:county) }
  it { should validate_presence_of(:postcode) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:phone) }
  
end
