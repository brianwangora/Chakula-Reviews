class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.string :type
      t.timestamp :created_at
      t.timestamp :updated_at
    end
  end
end
