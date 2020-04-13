class Course < ApplicationRecord
    has_many :registrations
    has_many :students, through: :registrations
    has_many :lectures
end
