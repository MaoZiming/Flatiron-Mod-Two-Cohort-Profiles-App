class AddColumnsToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :name, :string
  end
end
