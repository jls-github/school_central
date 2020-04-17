class Course < ApplicationRecord
    has_many :registrations
    has_many :students, through: :registrations
    has_many :lectures
    has_many :quizzes
    belongs_to :teacher
    validates :subject, presence: true
    validates :number, presence: true
    validates :title, presence: true

    def self.courses_by_teacher_id(teacher_id)
        Course.where(teacher_id: teacher_id)
    end

    def number_with_title
        "#{self.number} - #{self.title}"
    end

    def subject_with_number
        "#{self.subject} - #{self.number}"
    end
    

end
