class RemoveStatusFromItems < ActiveRecord::Migration[8.0]
  def change
    remove_column :items, :status, :string
  end
end
