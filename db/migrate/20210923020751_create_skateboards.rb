class CreateSkateboards < ActiveRecord::Migration[6.1]
  def change
    create_table :skateboards do |t|
      t.string :name

      t.timestamps
    end
  end
end