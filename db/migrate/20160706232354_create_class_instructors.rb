class CreateClassInstructors < ActiveRecord::Migration
  def change
    create_table :class_instructors do |t|

      t.timestamps null: false
    end
  end
end
