class Lecture < ApplicationRecord
  belongs_to :course
  validates :title, presence: true
  validates :content, presence: true
  validates :date, presence: true

  def display_date
    self.date.strftime("%B %e, %Y")
  end
end
