require 'rails_helper'

RSpec.describe Animal, type: :model do
  # Association test
  # ensure Todo model has a 1:m relationship with the Item model
  it { should have_many(:items).dependent(:destroy) }

  # Validation tests
  # ensure required columns are present before saving
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:t12) }
  it { should validate_presence_of(:t3) }
  it { should validate_presence_of(:t4) }
  it { should validate_presence_of(:rhythm) }
  it { should validate_presence_of(:wangel) }
  it { should validate_presence_of(:bdebil) }
end
