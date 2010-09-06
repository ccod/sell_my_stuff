class CreateItems < ActiveRecord::Migration
  def self.up
    create_table :items do |t|
      t.string :name
      t.integer :suggested_offer
      t.string :bidder
      t.integer :offer

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
