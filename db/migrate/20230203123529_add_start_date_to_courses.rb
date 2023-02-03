class AddStartDateToCourses < ActiveRecord::Migration[7.0]
  def change
    add_column :courses, :start_date, :date
    add_column :courses, :end_date, :date
  end
end
