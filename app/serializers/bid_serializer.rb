class BidSerializer < ActiveModel::Serializer
  attributes :id, :amount, :user_id, :auction_id
  belongs_to :user
  belongs_to :auction
end
