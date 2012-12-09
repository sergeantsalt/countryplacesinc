class ChangeUsersTable < ActiveRecord::Migration
  def up
    change_table :users do |t|
      t.string :phone, :required => true, :null => false
    end
  end

  def down
    change_table :users do |t|
      t.remove :phone
    end
  end
end
