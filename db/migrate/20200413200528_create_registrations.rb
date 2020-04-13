class CreateRegistrations < ActiveRecord::Migration[6.0]
  def change
    create_table :registrations do |t|
      t.references :student, null: false, foreign_key: true
      t.references :class, null: false, foreign_key: true

      t.timestamps
    end
  end
end
