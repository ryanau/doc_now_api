class CreateDoctors < ActiveRecord::Migration[5.1]
  def change
    create_table :doctors do |t|
      t.string :english_name, null: false
      t.string :chinese_name
      t.string :phone, null: false
      t.string :chinese_address
      t.string :address
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
