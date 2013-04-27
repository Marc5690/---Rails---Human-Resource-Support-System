class CreateTaskUserJoinTable < ActiveRecord::Migration
	def change
    create_table :tasks_users, :id => false do |t|
      t.integer :user_id
      t.integer :task_id
    end
  end

  def up
  end

  def down
  end
end
