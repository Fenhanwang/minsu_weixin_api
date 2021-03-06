require 'rails_helper'

# Test suite for the Order model
RSpec.describe Order, type: :model do
  # Association test
  # ensure an item record belongs to a single todo record
  it { should belong_to(:room) }
  # Validation test
  # ensure column name is present before saving
  it { should validate_presence_of(:first_name) }
end
