class CreateAnswerSubmissions < ActiveRecord::Migration[6.0]
  def change
    create_table :answer_submissions do |t|
      t.references :student, null: false, foreign_key: true
      t.references :answer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
