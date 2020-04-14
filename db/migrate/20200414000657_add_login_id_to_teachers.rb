class AddLoginIdToTeachers < ActiveRecord::Migration[6.0]
  def change
    add_column :teachers, :login_id, :integer
  end
end
