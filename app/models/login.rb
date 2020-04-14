class Login < ApplicationRecord
    has_secure_password
    has_one :student
    has_one :teacher
    accepts_nested_attributes_for :student

    def student_attributes=(student)
        self.student = Student.create(name: student[:name], major: student[:major])
        self.student.update(student)
    end
end
