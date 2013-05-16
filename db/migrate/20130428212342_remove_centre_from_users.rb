class RemoveCentreFromUsers < ActiveRecord::Migration
  def up
    remove_column :users, :centre
      end

  def down
    add_column :users, :centre, :string
  end
end
