class CreateMealTypes < ActiveRecord::Migration
  def change
    create_table :meal_types do |t|
      t.references :meal, index: true
      t.references :type, index: true

      t.timestamps
    end
  end
end
