class AuctionSerializer < ActiveModel::Serializer
  attributes :id, :item, :description, :value
  has_many :bids
  has_many :users
end
