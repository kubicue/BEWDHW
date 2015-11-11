class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :year
      t.string :make
      t.string :trim
      t.string :car_model
      t.string :color
      t.string :engine
      t.string :transmision
      t.string :photo
      t.integer :car_value
      t.date :date_purchase

      t.timestamps null: false
    end
  end
end
