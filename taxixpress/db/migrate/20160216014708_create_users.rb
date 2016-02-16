class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :id_user
      t.string :name
      t.string :last_name
      t.string :email
      t.string :name_user
      t.string :password
      t.integer :status
      t.integer :type_user

      t.timestamps null: false
    end
  end
end
