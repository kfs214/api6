require 'rails_helper'

RSpec.describe Member, type: :model do
  # Association test
  # ensure an member record belongs to a single animal record
  it { should belong_to(:animal) }

  # Validation test
  # ensure required columns are present before saving
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:birthday) }
end
