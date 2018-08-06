class ChangeLatAndLngInLocations < ActiveRecord::Migration[5.2]
  def change
    rename_column :locations, :lat, :x
    rename_column :locations, :lng, :lat
    rename_column :locations, :x, :lng
  end
end
