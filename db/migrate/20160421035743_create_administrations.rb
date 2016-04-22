class CreateAdministrations < ActiveRecord::Migration
  def change
    create_table :administrations do |t|
      t.string :username
      t.string :email
      t.string :password_digest
      t.string :role
      t.integer :cawangan_id

      t.timestamps null: false
    end
  end
end
