class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.integer :id_travel
      t.string :location_start
      t.string :des_location_start
      t.string :location_end
      t.string :des_location_end
      t.integer :type_pay
      t.decimal :cost
      t.datetime :booking_time

      t.timestamps null: false
    end
  end
end
