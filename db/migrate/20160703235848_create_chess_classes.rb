class CreateChessClasses < ActiveRecord::Migration
  def change
    create_table :chess_classes do |t|
      t.integer :days
      t.string :school
      t.decimal :price
      t.datetime :start_time
      t.datetime :end_time
      t.integer :size

      t.timestamps null: false
    end
  end
end
