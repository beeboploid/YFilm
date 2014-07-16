class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :title
      t.integer :project_id
      t.integer :user_id

      t.timestamps
    end
  end
end
