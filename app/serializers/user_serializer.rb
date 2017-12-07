class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :amount, :password
  has_many :bids
  has_many :auctions
end
