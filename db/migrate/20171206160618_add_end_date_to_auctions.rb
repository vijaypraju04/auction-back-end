class AddEndDateToAuctions < ActiveRecord::Migration[5.1]
  def change
    add_column :auctions, :end_date, :string
  end
end
