class CreateFoods < ActiveRecord::Migration[5.2]
  def change
    create_table :foods do |t|
      t.string :dish
      t.string :ingredient
      t.string :spice
      t.decimal :price

      t.timestamps
    end
  end
end
