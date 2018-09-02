class AddLodgingSiteToLocation < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :lodging_site, :boolean
  end
end
