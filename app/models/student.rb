class Student < ApplicationRecord
    has_many :registrations
    has_many :classes, through: :registrations
end
