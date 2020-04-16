class Lecture < ApplicationRecord
  belongs_to :course

  def display_date
    self.date.strftime("%B %e, %Y")
  end
end
