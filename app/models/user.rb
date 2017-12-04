require 'bcrypt'


class User < ApplicationRecord
  has_many :bids
  has_many :auctions, through: :bids
  # attr_accessible :username, :password_digest
  has_secure_password
  # include BCrypt
 #
 #  def password
 #   @password ||= Password.new(password_hash)
 # end
 #
 # def password=(new_password)
 #   @password = Password.create(new_password)
 #   self.password = @password
 # end


end
