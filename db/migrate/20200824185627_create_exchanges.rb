class CreateExchanges < ActiveRecord::Migration[6.0]
  def change
    create_table :exchanges do |t|
      t.text :review
      t.references :rick, null: false, foreign_key: true
      t.references :morty, null: false, foreign_key: true

      t.timestamps
    end
  end
end
