class Login < ApplicationRecord
    has_secure_password
    has_one :student
    has_one :teacher

end
