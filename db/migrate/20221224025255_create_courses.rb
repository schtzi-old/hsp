class CreateCourses < ActiveRecord::Migration[7.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.integer :capacity
      t.text :description
      t.references :sport, null: false, foreign_key: true
      t.string :level

      t.timestamps
    end
  end
end
