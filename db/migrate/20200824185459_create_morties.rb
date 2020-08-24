class CreateMorties < ActiveRecord::Migration[6.0]
  def change
    create_table :morties do |t|
      t.decimal :price
      t.text :description
      t.integer :rarity
      t.string :title
      t.references :rick, null: false, foreign_key: true

      t.timestamps
    end
  end
end
