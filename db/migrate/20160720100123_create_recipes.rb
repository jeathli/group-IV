class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.index :name, unique: true
      t.text :ingredient_details, null: false
      t.text :description, null: false
      t.string :img_url, null: false

      t.timestamps
    end
  end
end
