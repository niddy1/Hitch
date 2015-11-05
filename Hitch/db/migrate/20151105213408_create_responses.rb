class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.integer :girl_id
      t.integer :hitcher_id
      t.string :response_description
      t.integer :hitcher_rating

      t.timestamps null: false
    end
  end
end
