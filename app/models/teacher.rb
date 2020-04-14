class Teacher < ApplicationRecord
    has_many :courses
    belongs_to :login

    def self.courses_by_user_id(id)
        Login.find(id).teacher.courses
    end

end
