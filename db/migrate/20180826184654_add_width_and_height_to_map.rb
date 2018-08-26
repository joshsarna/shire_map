class AddWidthAndHeightToMap < ActiveRecord::Migration[5.2]
  def change
    add_column :maps, :height, :integer
    add_column :maps, :width, :integer
  end
end
