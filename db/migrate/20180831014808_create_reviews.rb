class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :reviewer
      t.string :text
      t.integer :location_id

      t.timestamps
    end
  end
end
