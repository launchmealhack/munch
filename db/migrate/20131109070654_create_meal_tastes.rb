class CreateMealTastes < ActiveRecord::Migration
  def change
    create_table :meal_tastes do |t|
      t.references :taste, index: true
      t.references :meal, index: true

      t.timestamps
    end
  end
end
