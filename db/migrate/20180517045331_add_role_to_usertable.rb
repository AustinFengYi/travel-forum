class AddRoleToUsertable < ActiveRecord::Migration[5.1]
  def change
    add_column :travelresorts, :role, :string
  end
end
