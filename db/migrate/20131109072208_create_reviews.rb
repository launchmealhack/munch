class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :meal, index: true
      t.references :user, index: true
      t.integer :vote
      t.decimal :price_paid
      t.text :content

      t.timestamps
    end
  end
end
