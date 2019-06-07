class CreateHours < ActiveRecord::Migration[5.2]
  def change
    create_table :hours do |t|
      t.integer :day
      t.integer :opening_time
      t.integer :closing_time
      t.references :gym, foreign_key: true

      t.timestamps
    end
  end
end
