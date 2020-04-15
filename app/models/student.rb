class Student < ApplicationRecord
    has_many :registrations
    has_many :courses, through: :registrations
    has_many :answer_submissions
    belongs_to :login

    def self.courses_by_id(id)
        Student.find(id).courses
    end

    def taken_quizzes
        self.answer_submissions.map {|submission| submission.quiz }.uniq
    end

    def percentage_for_quiz(quiz_id)
        answers = Quiz.find(quiz_id).answers_from_student(self.id)
        total_correct = answers.select{|answer| answer.correct == true }.length
        ((total_correct.to_f / answers.length.to_f) * 100).to_i
    end
end
