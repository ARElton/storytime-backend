class ChildStorytimeSerializer < ActiveModel::Serializer
  attributes :id, :child_id, :storytime_id, :comment
end
