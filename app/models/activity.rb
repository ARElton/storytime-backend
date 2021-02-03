class Activity < ApplicationRecord
    belongs_to :category
    has_many :storytimeActivities
    has_many :storytimes, through: :storytimeActivities
    has_many :childActivities
    has_many :children, through: :childActivities
end
