class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.integer :id_rate
      t.string :origin
      t.string :destination
      t.decimal :amount

      t.timestamps null: false
    end
  end
end
