class CreateSynonyms < ActiveRecord::Migration[5.2]
  def change
    create_table :synonyms do |t|
      t.string :name
      t.integer :location_id

      t.timestamps
    end
  end
end
