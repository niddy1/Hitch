class CreateGuys < ActiveRecord::Migration
  def change
    create_table :guys do |t|
      t.string :username
      t.string :password_digest
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
