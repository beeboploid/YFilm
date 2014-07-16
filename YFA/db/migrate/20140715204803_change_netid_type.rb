class ChangeNetidType < ActiveRecord::Migration
  def change
  	change_column :users, :netid, :string
  end
end
