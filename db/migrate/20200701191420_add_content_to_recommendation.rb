class AddContentToRecommendation < ActiveRecord::Migration[6.0]
  def change
    add_column :recommendations, :content, :string
  end
end
