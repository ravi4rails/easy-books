class CreateNewsLetterSubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :news_letter_subscriptions do |t|
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
end
