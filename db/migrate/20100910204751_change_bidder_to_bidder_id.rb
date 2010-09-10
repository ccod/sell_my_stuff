class ChangeBidderToBidderId < ActiveRecord::Migration
  def self.up
    remove_column :items, :bidder
    add_column :items, :bidder_id, :integer
  end

  def self.down  
    remove_column :items, :bidder_id
    add_column :items, :bidder, :string
  end
end
