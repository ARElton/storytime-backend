class ChildSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :age
  belongs_to :user 
  has_many :childStorytimes
  has_many :storytimes, through: :childStorytimes
  has_many :childActivities 
  has_many :activities, through: :childActivities
end
