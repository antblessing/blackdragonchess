# == Schema Information
#
# Table name: class_instructors
#
#  id             :integer          not null, primary key
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  chess_class_id :integer
#  instructor_id  :integer
#

class ClassInstructor < ActiveRecord::Base
  belongs_to :chess_class
  belongs_to :instructor

  def chess_class
    ChessClass.find(chess_class_id)
  end

  def instructor
    Instructor.find(instructor_id)
  end
end
