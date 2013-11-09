class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.float :score
      t.references :restaurant, index: true

      t.timestamps
    end
  end
end
