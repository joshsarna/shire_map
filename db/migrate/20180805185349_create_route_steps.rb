class CreateRouteSteps < ActiveRecord::Migration[5.2]
  def change
    create_table :route_steps do |t|
      t.integer :route_id
      t.integer :route_segment_id
      t.integer :order_index
      t.decimal :step_distance
      t.decimal :step_time
      t.string :direction

      t.timestamps
    end
  end
end
