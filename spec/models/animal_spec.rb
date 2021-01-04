require 'rails_helper'

RSpec.describe Animal, type: :model do
  # Association test
  # ensure Animal model has a 1:m relationship with the Member model
  it { should have_many(:members).dependent(:destroy) }

  # Validation tests
  # ensure required columns are present before saving
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:t12) }
  it { should validate_presence_of(:t3) }
  it do
    should validate_numericality_of(:t4).
      only_integer.
      is_greater_than_or_equal_to(1).
      is_less_than_or_equal_to(4)
  end
  it { should validate_presence_of(:rhythm) }
  it do
    should validate_numericality_of(:wangel).
      only_integer.
      is_greater_than_or_equal_to(1).
      is_less_than_or_equal_to(60)
  end
  it do
    should validate_numericality_of(:bdebil).
      only_integer.
      is_greater_than_or_equal_to(1).
      is_less_than_or_equal_to(60)
  end
end
