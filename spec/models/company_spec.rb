require 'spec_helper'

describe Company do
  
  before(:each) do
    @company = Factory(:company)
  end

  it "should create a new instance given valid attributes" do
    @company_attributes = Factory.attributes_for(:company)
    @company_from_attributes = Company.create!(@company_attributes)
    @company_from_attributes.should be_valid
  end
  
  it "should be valid" do
    @company.should be_valid
  end
    
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:address1) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:county) }
  it { should validate_presence_of(:postcode) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:phone) }
  it { should have_many(:categories) }
  
  it "should validate maximum length of :name is 30" do
    @company.name = "1234567890123456789012345678901"
    @company.should_not be_valid
  end
  
end
