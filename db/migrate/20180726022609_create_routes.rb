class CreateRoutes < ActiveRecord::Migration[5.2]
  def change
    create_table :routes do |t|
      t.integer :start_location_id
      t.integer :end_location_id
      t.integer :total_time
      t.decimal :total_distance

      t.timestamps
    end
  end
end
