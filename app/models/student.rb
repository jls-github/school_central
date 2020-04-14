class Student < ApplicationRecord
    has_many :registrations
    has_many :courses, through: :registrations
    belongs_to :login

    def self.courses_by_user_id(id)
        Student.find(id).courses
    end
end
