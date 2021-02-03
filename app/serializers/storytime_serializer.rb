class StorytimeSerializer < ActiveModel::Serializer
  attributes :id, :title, :age, :genre, :time
end
