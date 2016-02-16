class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :id_rating
      t.integer :id_assignment
      t.integer :value
      t.string :comment

      t.timestamps null: false
    end
  end
end
