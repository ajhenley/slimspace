class AddFieldsToBooking < ActiveRecord::Migration
  def change
    add_column :bookings, :start_time, :datetime
    add_column :bookings, :length, :integer
  end
end
