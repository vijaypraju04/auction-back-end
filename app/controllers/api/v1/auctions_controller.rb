class Api::V1::AuctionsController < ApplicationController

  # before_action :

  def index
    @auctions = Auction.all
    render json: @auctions
  end

  def show
    @auction = Auction.find(params[:id])
      render json: @auction
  end

  def create
    @auction = Auction.create(auction_params)
    render json: @auction
  end


  private

  def auction_params
    params.require(:auction).permit(:item, :title, :description, :value)
  end


end
