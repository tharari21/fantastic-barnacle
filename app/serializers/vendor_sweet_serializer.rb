class VendorSweetSerializer < ActiveModel::Serializer
  attributes :id, :name, :price
  has_one :sweet
  def name
    object.sweet.name
  end
end
