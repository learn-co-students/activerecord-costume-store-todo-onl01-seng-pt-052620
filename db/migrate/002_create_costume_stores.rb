class CreateCostumeStores < ActiveRecord::Migration[4.2]

    def change
        create_table :costume_stores do |s|
            s.string :name
            s.string :location
            s.integer :costume_inventory
            s.integer :num_of_employees
            s.boolean :still_in_business
            s.datetime :opening_time
            s.datetime :closing_time
        end 
    end 

end
