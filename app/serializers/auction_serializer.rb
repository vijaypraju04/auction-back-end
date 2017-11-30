class AuctionSerializer < ActiveModel::Serializer
  attributes :id, :item, :title, :description, :value
  has_many :bids
  has_many :users
end
