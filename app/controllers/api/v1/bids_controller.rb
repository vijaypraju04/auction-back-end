class Api::V1::BidsController < ApplicationController

  def index
    @bids = Bid.all
    render json: @bids
  end

  def create
    byebug
    @bid = Bid.create(bid_params)
    @bid.save
    render json: @bid
  end

  private

  def bid_params
    params.require(:bid).permit(:amount, :user_id, :auction_id)
  end

end
