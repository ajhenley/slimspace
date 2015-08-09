class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.datetime :start
      t.datetime :end
      t.integer :user_id
      t.integer :space_id

      t.timestamps null: false
    end
  end
end
