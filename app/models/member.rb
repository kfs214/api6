class Member < ApplicationRecord
  belongs_to :animal

  validates_presence_of :name, :birthday
end
