class CreateOpeningHours < ActiveRecord::Migration[5.2]
  def change
    create_table :opening_hours do |t|
      t.integer :week_day
      t.time :opening_time
      t.time :closing_time
      t.references :gym, foreign_key: true

      t.timestamps
    end
  end
end
