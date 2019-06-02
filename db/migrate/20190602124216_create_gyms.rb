class CreateGyms < ActiveRecord::Migration[5.2]
  def change
    create_table :gyms do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :email
      t.text :description
      t.string :avatar
      t.string :banner
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
