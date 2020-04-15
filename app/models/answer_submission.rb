class AnswerSubmission < ApplicationRecord
  belongs_to :student
  belongs_to :answer
end
