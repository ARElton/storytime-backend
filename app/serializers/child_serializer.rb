class ChildSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :name, :age
end
