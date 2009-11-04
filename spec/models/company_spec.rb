require 'spec_helper'

describe Company do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :description => "value for description",
      :address1 => "value for address1",
      :address2 => "value for address2",
      :address3 => "value for address3",
      :email => "value for email",
      :website => "value for website",
      :phone => "value for phone",
      :fax => "value for fax",
      :lat => "value for lat",
      :long => "value for long",
      :approved => false
    }
  end

  it "should create a new instance given valid attributes" do
    Company.create!(@valid_attributes)
  end
end
