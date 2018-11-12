class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :contact1
      t.string :contact2
      t.string :fax
      t.string :email
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
