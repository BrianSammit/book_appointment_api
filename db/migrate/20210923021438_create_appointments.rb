class CreateAppointments < ActiveRecord::Migration[6.1]
  def change
    create_table :appointments do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.string :city
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :skateboard, null: false, foreign_key: true

      t.timestamps
    end
  end
end
