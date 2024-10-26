class CreateOrgans < ActiveRecord::Migration[7.1]
  def change
    create_table :organs do |t|
      t.string :name
      t.text :function
      t.string :location

      t.timestamps
    end
  end
end
