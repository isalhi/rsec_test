class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :id_creator
      t.integer :id_activity
      t.text :message

      t.timestamps
    end
  end
end
