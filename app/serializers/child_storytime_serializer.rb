class ChildStorytimeSerializer < ActiveModel::Serializer
  attributes :id, :child_id, :storytime_id, :comment
  belongs_to :child 
  belongs_to :storytime 
end
 