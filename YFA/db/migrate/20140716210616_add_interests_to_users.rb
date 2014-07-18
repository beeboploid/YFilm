class AddInterestsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :interests, :string
    add_column :users, :bio, :text
  end
end
