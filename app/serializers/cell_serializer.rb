class CellSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :user

  belongs_to :user
end
