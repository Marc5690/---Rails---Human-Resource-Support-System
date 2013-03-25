class CreatePrivateMessages < ActiveRecord::Migration
  def change
    create_table :private_messages do |t|
      t.integer :sender
      t.integer :receiver
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
