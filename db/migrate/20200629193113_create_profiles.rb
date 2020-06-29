class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.integer :age
      t.string :bio
      t.string :major
      t.integer :user_id
      t.timestamps
    end
  end
end
