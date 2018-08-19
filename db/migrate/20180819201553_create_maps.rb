class CreateMaps < ActiveRecord::Migration[5.2]
  def change
    create_table :maps do |t|
      t.decimal :lat_floor
      t.decimal :lat_ceiling
      t.decimal :lng_floor
      t.decimal :lng_ceiling
      t.string :name
      t.string :image_url
      t.string :level

      t.timestamps
    end
  end
end
