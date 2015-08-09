class AddFieldToSpaces < ActiveRecord::Migration
  def change
    add_column :spaces, :image, :string
  end
end
