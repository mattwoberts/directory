require 'spec_helper'

describe Categorization do
  
  it { should belong_to(:company) }
  it { should belong_to(:category) }

end
