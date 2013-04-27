class CreateUserTaskJoinTable < ActiveRecord::Migration
  def up
  end

  def change
    create_table :users_tasks, :id => false do |t|
      t.integer :user_id
      t.integer :task_id
    end
  end

  def down
  end
end
