class Student < ApplicationRecord
    has_many :registrations
    has_many :courses, through: :registrations
    belongs_to :login
end
