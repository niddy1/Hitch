class AddPhoneNumberToGirls < ActiveRecord::Migration
  def change
    add_column :girls, :phone_number, :string
  end
end
