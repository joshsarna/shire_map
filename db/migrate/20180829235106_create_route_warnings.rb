class CreateRouteWarnings < ActiveRecord::Migration[5.2]
  def change
    create_table :route_warnings do |t|
      t.integer :route_segment_id
      t.string :text

      t.timestamps
    end
  end
end
