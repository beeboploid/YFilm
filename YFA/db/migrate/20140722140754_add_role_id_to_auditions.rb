class AddRoleIdToAuditions < ActiveRecord::Migration
  def change
    add_column :auditions, :role_id, :integer
  end
end
