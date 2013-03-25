class AddDateStartedToProject < ActiveRecord::Migration
  def change
    add_column :projects, :date_started, :datetime

  end
end
