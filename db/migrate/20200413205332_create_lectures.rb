class CreateLectures < ActiveRecord::Migration[6.0]
  def change
    create_table :lectures do |t|
      t.string :title
      t.references :course, null: false, foreign_key: true
      t.string :content
      t.datetime :date

      t.timestamps
    end
  end
end
