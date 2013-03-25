class AddPercentageToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :percentage, :float

  end
end
