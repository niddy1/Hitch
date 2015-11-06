class AddNameNumberToGirls < ActiveRecord::Migration
  def change
    add_column :girls, :name, :string
  end
end
