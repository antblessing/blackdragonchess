# == Schema Information
#
# Table name: instructors
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Instructor < ActiveRecord::Base
  validates_presence_of :first_name, :last_name

  has_many :class_instructors
  has_many :chess_classes, through: :class_instructors
end
