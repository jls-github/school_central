class Course < ApplicationRecord
    has_many :registrations
    has_many :students, through: :registrations
    has_many :lectures
    has_many :quizzes
    belongs_to :teacher

    def self.courses_by_teacher_id(teacher_id)
        Course.where(teacher_id: teacher_id)
    end
    

end
