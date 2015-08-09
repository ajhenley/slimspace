class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :description
      t.string :price
      t.string :hours
      t.string :user

      t.timestamps null: false
    end
  end
end
