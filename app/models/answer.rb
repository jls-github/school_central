class Answer < ApplicationRecord
  belongs_to :question
  has_many :answer_submissions
end
