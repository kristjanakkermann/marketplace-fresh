class AddStatusToItems < ActiveRecord::Migration[8.0]
  def change
    add_column :items, :item_status, :string
  end
end
