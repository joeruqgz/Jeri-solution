class CreateTaxis < ActiveRecord::Migration
  def change
    create_table :taxis do |t|
      t.integer :type_taxi
      t.integer :number_seats
      t.integer :id_driver
      t.integer :status

      t.timestamps null: false
    end
  end
end
