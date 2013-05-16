class RemovePayCenterFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :pay_center
      end

  def down
    add_column :users, :pay_center, :string
  end
end
