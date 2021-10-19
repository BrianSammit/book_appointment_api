class ChangeNameColumnToBrand < ActiveRecord::Migration[6.1]
  def change
    rename_column :skateboards, :name, :brand
  end
end
