class AddNumberOfSeatsToSpace < ActiveRecord::Migration
  def change
    add_column :spaces, :number_of_seats, :integer
  end
end
