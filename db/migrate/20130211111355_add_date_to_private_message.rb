class AddDateToPrivateMessage < ActiveRecord::Migration
  def change
    add_column :private_messages, :date, :datetime

  end
end
