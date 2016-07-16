class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.references :chess_class, index: true, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.integer :grade
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
