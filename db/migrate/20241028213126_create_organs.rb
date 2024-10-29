class CreateOrgans < ActiveRecord::Migration[7.1]
  def change
    create_table :organs do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.integer :age
      t.string :img_url
      t.string :bloody_type

      t.timestamps
    end
  end
end
