class Course < ApplicationRecord
    has_many :registrations
    has_many :students, through: :registrations
    has_many :lectures
    has_many :quizzes
    belongs_to :teacher

    

end
