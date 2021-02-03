class Storytime < ApplicationRecord
    has_many :childStorytimes
    has_many :children, through: :childStorytimes
    has_many :storytimeActivities 
    has_many :activities, through: :storytimeActivities
end
