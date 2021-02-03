class ChildActivitySerializer < ActiveModel::Serializer
  attributes :id, :child_id, :activity_id, :comment
  belongs_to :child
  belongs_to :activity 
end
 