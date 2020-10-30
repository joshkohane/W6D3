class ChangeComment < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :body, :string, null: false
    add_index :comments, :user_id
    add_index :comments, :artwork_id
  end
end
