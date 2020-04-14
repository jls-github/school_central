class Teacher < ApplicationRecord
    has_many :courses
    belongs_to :login

    def self.courses_by_id(id)
        Teacher.find(id).courses
    end

end
