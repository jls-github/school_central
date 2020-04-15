class Quiz < ApplicationRecord
  belongs_to :course
  has_many :questions
  accepts_nested_attributes_for :questions

  def answers_from_student(student_id)
    answers = self.questions.map {|question| question.answers }.flatten
    student_answers = []
    Student.find(student_id).answer_submissions.each do |submission|
      if answers.include?(submission.answer)
        (student_answers << submission.answer)
      end
    end
    student_answers
  end
end
