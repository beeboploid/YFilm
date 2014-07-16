class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :genre
      t.text :description
      t.datetime :dates
      t.integer :producer
      t.string :location

      t.timestamps
    end
  end
end
