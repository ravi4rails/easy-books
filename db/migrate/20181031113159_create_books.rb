class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :name
      t.integer :price
      t.text :detail
      t.string :front_cover_image
      t.string :back_cover_image
      t.references :book_category, foreign_key: true

      t.timestamps
    end
  end
end
