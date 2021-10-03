class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :category
  belongs_to :users
end
