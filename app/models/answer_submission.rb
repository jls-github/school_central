class AnswerSubmission < ApplicationRecord
  belongs_to :student
  belongs_to :answer

  def quiz
    self.answer.question.quiz
  end

  
end
