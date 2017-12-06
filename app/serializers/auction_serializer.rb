class AuctionSerializer < ActiveModel::Serializer
  attributes :id, :item, :title, :description, :value, :end_date
  has_many :bids
  has_many :users
end
