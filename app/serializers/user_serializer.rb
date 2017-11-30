class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :amount
  has_many :bids
  has_many :auctions
end
