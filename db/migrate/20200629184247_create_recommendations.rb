class CreateRecommendations < ActiveRecord::Migration[6.0]
  def change
    create_table :recommendations do |t|
      t.integer :recommender_id
      t.integer :recommendee_id

      t.timestamps
    end
  end
end
