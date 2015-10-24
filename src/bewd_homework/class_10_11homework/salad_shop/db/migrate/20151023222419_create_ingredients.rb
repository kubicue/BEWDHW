class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.string :ingredient_type
      t.integer :quantity
      t.string :unit

      t.timestamps null: false
    end
  end
end
