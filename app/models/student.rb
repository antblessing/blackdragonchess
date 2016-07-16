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
#
# Indexes
#
#  index_students_on_chess_class_id  (chess_class_id)
#

class Student < ActiveRecord::Base
  belongs_to :chess_class
end
