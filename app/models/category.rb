class Category < ActiveRecord::Base
  
  # Associations
  has_many :categorizations
  has_many :companies, :through => :categorizations
  
  # Validations
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_length_of :name, :maximum => 30
  
end
