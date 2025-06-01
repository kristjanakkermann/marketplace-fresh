class AddStatusToComments < ActiveRecord::Migration[8.0]
  def change
    add_column :comments, :comment_status, :string
  end
end
