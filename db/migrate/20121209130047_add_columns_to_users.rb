class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :job_description, :string
    add_column :users, :phone, :integer
    add_column :users, :bio, :text
  end
end
