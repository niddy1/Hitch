class CreateGirls < ActiveRecord::Migration
  def change
    create_table :girls do |t|
      t.integer :guy_id
      t.string :profile_picture
      t.string :description_1
      t.string :description_2
      t.string :description_3

      t.timestamps null: false
    end
  end
end
