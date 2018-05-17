class CreateTravelresorts < ActiveRecord::Migration[5.1]
  def change
    create_table :travelresorts do |t|
      t.string :name
      t.string :tel
      t.string :opening_hours
      t.string :address
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
