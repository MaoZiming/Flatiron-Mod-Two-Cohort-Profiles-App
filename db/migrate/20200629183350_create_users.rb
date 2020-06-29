class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      # t.string :password
      t.integer :cohort_id
      # t.integer :age
      # t.string :bio
      # t.string :major
      t.timestamps
    end
  end
end
