# Create your costume_stores migration here

class CreateCostumeStores < ActiveRecord::Migration[5.2]
  def change
    create_table :costume_stores do |t|
      t.string :name 
      t.string :location
      t.integer :costume_inventory
      t.integer :employees
      t.boolean :open
      t.time :opening_time
      t.time :closing_time
    end
  end
end