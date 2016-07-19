# == Schema Information
#
# Table name: students
#
#  id             :integer          not null, primary key
#  chess_class_id :integer
#  first_name     :string
#  last_name      :string
#  grade          :integer
#  phone_number   :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  email          :string
#
# Indexes
#
#  index_students_on_chess_class_id  (chess_class_id)
#

class Student < ActiveRecord::Base
  validates_presence_of :first_name, :last_name, :grade, :phone_number
  #validates :first_name, length: { minimum: 2 }
  #validates :last_name, length: { minimum: 2 }
  validates :grade, inclusion: { in: [1,2,3,4,5] }
  belongs_to :chess_class, dependent: :destroy
end
