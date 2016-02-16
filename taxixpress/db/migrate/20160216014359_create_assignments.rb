class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.integer :id_assignment
      t.integer :id_taxi
      t.integer :id_travel
      t.integer :status
      t.integer :id_user_operator
      t.integer :id_customer
      t.string :username

      t.timestamps null: false
    end
  end
end
