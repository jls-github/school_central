class Registration < ApplicationRecord
  belongs_to :student
  belongs_to :class
end
