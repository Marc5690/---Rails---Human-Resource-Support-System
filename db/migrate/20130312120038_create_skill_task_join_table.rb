class CreateSkillTaskJoinTable < ActiveRecord::Migration
   def change
      create_table :skills_tasks, :id => false do |t|
      t.integer :skill_id
      t.integer :task_id
      
    end

  end

  def up
  end

  def down
  end
end
