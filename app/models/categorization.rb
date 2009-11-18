class Categorization < ActiveRecord::Base
  
  # Associations
  belongs_to :company
  belongs_to :category

end
