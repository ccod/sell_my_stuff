class CreateBidders < ActiveRecord::Migration
  def self.up
    create_table :bidders do |t|
      t.column :name, :string
      t.column :phone, :string
      t.column :email, :string
      t.timestamps
    end
  end

  def self.down
    drop_table :bidders
  end
end
