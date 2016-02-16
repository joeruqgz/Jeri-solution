class CreateTaxiDrivers < ActiveRecord::Migration
  def change
    create_table :taxi_drivers do |t|
      t.integer :id_driver
      t.integer :id_user

      t.timestamps null: false
    end
  end
end
