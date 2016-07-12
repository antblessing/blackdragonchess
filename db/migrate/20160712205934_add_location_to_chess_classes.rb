class AddLocationToChessClasses < ActiveRecord::Migration
  def change
    add_column :chess_classes, :location, :string
  end
end
