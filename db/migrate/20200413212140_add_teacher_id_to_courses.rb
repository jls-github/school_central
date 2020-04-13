class AddTeacherIdToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :teacher_id, :integer
  end
end
