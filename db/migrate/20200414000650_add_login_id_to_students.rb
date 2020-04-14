class AddLoginIdToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :login_id, :integer
  end
end
