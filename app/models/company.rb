class Company < ActiveRecord::Base
  validates_presence_of :name, :description, :address1, :city, :county, :postcode, :email, :phone
  validates_length_of   :name, :maximum => 30
end
