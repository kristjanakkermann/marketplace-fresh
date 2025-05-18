class CreateJewels < ActiveRecord::Migration[8.0]
  def change
    create_table :jewels do |t|
      t.string :type
      t.string :material
      t.float :price

      t.timestamps
    end
  end
end
