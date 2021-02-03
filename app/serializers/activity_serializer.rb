class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :link, :image, :category_id
  belongs_to :category
  has_many :storytimeActivities
  has_many :storytimes, through: :storytimeActivities
  has_many :childActivities
  has_many :children, through: :childActivities
end
 