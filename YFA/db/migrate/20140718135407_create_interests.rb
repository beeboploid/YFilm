class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.string :acting
      t.string :directing
      t.string :editing
      t.string :costumes
      t.string :cinematography
      t.string :camerawork
      t.string :sound
      t.integer :user_id

      t.timestamps
    end
  end
end
