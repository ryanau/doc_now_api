class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :name, null: false
      t.string :phone, null: false
      t.string :hkid
      t.string :booking_number, null: false
      t.integer :doctor_id, null: false

      t.timestamps
    end
  end
end
