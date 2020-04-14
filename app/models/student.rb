class Student < ApplicationRecord
    has_many :registrations
    has_many :courses, through: :registrations
    belongs_to :login

    def self.courses_by_user_id(id)
        Login.find(id).student.courses
    end
end
