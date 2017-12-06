class AuctionSerializer < ActiveModel::Serializer
  attributes :id, :item, :title, :description, :value, :end_date, :creator_id
  has_many :bids
  has_many :users
end
