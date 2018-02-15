class AddLatitudeAndLongitudeToJiro < ActiveRecord::Migration
  def change
    add_column :jiros, :latitude, :float
    add_column :jiros, :longitude, :float
  end
end
