class User < ApplicationRecord
    has_secure_password
    has_many :children 
    validates :username, uniqueness: true
end
