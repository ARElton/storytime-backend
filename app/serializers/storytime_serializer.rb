class StorytimeSerializer < ActiveModel::Serializer
  attributes :id, :title, :age, :genre, :time
  has_many :activities
end
 