class CellSerializer < ActiveModel::Serializer
  attributes :id, :title, :description

  belongs_to :user
end
