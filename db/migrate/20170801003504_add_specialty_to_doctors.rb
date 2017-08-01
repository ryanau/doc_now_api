class AddSpecialtyToDoctors < ActiveRecord::Migration[5.1]
  def change
    add_column :doctors, :specialty, :string
  end
end
