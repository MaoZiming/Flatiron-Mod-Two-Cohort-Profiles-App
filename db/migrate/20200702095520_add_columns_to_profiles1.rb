class AddColumnsToProfiles1 < ActiveRecord::Migration[6.0]
  def change
    add_column :profiles, :language_id, :integer
  end
end
