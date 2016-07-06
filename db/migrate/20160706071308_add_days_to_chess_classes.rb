class AddDaysToChessClasses < ActiveRecord::Migration
  def change
    add_column :chess_classes, :days, :string
  end
end
