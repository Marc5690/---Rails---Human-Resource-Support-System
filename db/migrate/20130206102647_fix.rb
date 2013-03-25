class Fix < ActiveRecord::Migration
  def change
remove_column :absences, :type
  end

  def up

  drop_table :microposts
  
  end

  def down

  end
end
