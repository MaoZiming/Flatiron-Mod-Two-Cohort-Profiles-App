class AddColumnsToProfiles < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :city, :string
    add_column :profiles, :university, :string
  end
end
