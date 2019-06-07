class CreateEntries < ActiveRecord::Migration[5.2]
  def change
    create_table :entries do |t|
      t.integer :price_cents
      t.integer :number_of_entries
      t.integer :duration
      t.references :gym, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
