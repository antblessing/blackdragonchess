class AddColumnToClassInstructor < ActiveRecord::Migration
  def change
    add_column :class_instructors, :chess_class_id, :integer
    add_column :class_instructors, :instructor_id, :integer 
  end
end
