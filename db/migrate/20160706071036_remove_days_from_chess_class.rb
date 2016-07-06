class RemoveDaysFromChessClass < ActiveRecord::Migration
  def change
    remove_column :chess_classes, :days, :integer
  end
end
