class CreateAuditions < ActiveRecord::Migration
  def change
    create_table :auditions do |t|
      t.integer :project_id
      t.integer :user_id
      t.string :user_name
      t.datetime :when
      

      t.timestamps
    end
  end
end
