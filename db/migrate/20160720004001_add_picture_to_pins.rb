class AddPictureToPins < ActiveRecord::Migration[5.0]
  def change
    add_column :pins, :picture, :string
  end
end
