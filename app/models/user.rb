class User < ApplicationRecord
    has_many :children 
    has_secure_password
end
