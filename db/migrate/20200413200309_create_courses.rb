class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :subject
      t.string :number
      t.string :title

      t.timestamps
    end
  end
end
