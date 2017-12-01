class Api::V1::AuctionsController < ApplicationController

  def index
    @auctions = Auction.all
    render json: @auctions
  end

  def show
    @auction = Auction.find(params[:id])
      respond_to do |format|
      format.json { render json: @auction }
    end
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
