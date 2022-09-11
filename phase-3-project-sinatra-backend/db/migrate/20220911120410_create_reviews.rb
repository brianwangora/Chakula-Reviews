class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :score
      t.string :comment
      t.integer :restaurant_id
      t.integer :user_id
      t.timestamp :created_at
      t.timestamp :updated_at
    end
  end
end
