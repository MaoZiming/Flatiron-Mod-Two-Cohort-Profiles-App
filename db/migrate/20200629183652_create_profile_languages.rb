class CreateProfileLanguages < ActiveRecord::Migration[6.0]
  def change
    create_table :profile_languages do |t|
      t.integer :profile_id
      t.integer :language_id

      t.timestamps
    end
  end
end
