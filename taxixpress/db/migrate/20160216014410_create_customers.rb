class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :id_customer
      t.integer :id_user

      t.timestamps null: false
    end
  end
end
