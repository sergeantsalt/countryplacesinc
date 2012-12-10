class OrderingForImages < ActiveRecord::Migration
  def up
    change_table :images do |t|
      t.integer :order, :default => 0, :null => false
    end
  end

  def down
    change_table :images do |t|
      t.remove :order
    end
  end
end