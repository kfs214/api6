class Animal < ApplicationRecord
    has_many :members, dependent: :destroy

    validates_presence_of :name, :t12, :t3, :rhythm
    validates_numericality_of :t4, only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 4
    validates_numericality_of :wangel, only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 60
    validates_numericality_of :bdebil, only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 60
end
