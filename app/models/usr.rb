class Usr < ApplicationRecord
    has_secure_password
    validates :password, presence: true

    validates :name, presence: true, uniqueness: true
end
