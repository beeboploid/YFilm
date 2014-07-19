class AddCastToRoles < ActiveRecord::Migration
  def change
    add_column :roles, :cast, :boolean
  end
end
