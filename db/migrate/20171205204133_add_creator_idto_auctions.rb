class AddCreatorIdtoAuctions < ActiveRecord::Migration[5.1]
  def change
    add_column :auctions, :creator_id, :integer
  end
end
