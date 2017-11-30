class CreateAuctions < ActiveRecord::Migration[5.1]
  def change
    create_table :auctions do |t|
      t.text :item
      t.string :title
      t.text :description
      t.integer :value

      t.timestamps
    end
  end
end
