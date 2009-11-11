class Company < ActiveRecord::Base
  
  validates_presence_of :name, 
                        :description,
                        :address1,
                        :city,
                        :county,
                        :postcode,
                        :email,
                        :phone 
end
