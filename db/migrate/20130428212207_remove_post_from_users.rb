class RemovePostFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :post
      end

  def down
    add_column :users, :post, :string
  end
end
