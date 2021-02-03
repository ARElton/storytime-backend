class Child < ApplicationRecord
    belongs_to :user 
    has_many :childStorytimes
    has_many :storytimes, through: :childStorytimes
    has_many :childActivities 
    has_many :activities, through: :childActivities
end
