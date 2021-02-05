class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :link, :image, :category_id
  belongs_to :category 
end
 