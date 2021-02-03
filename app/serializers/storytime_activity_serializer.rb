class StorytimeActivitySerializer < ActiveModel::Serializer
  attributes :id, :storytime_id, :activity_id
  belongs_to :storytime 
  belongs_to :activity 
end
