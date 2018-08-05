class CreateRouteSegments < ActiveRecord::Migration[5.2]
  def change
    create_table :route_segments do |t|
      t.integer :nw_end
      t.integer :se_end
      t.decimal :distance
      t.integer :time
      t.string :description
      t.string :road

      t.timestamps
    end
  end
end
