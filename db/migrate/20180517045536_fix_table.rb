class FixTable < ActiveRecord::Migration[5.1]
  def change
    remove_column :travelresorts,:role
    add_column :users,:role,:string
  end
end
