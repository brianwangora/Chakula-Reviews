class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.timestamp :created_at
      t.timestamp :updated_at
    end
  end
end
