class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :fname
      t.string :lname
      t.integer :netid
      t.string :email

      t.timestamps
    end
  end
end
