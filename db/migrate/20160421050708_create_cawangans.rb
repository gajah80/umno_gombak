class CreateCawangans < ActiveRecord::Migration
  def change
    create_table :cawangans do |t|
      t.string :nama

      t.timestamps null: false
    end
  end
end
