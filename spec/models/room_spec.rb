require 'rails_helper'

# Test suite for Room model
RSpec.describe Room, type: :model do
  # Association test
  # ensure Room model has a 1:m relationship with the Item model
  it { should have_many(:orders).dependent(:destroy) }
  # Validation tests
  # ensure columns title and created_by are present before saving
  it { should validate_presence_of(:charge) }
end
