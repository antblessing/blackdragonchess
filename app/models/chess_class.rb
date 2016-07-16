# == Schema Information
#
# Table name: chess_classes
#
#  id         :integer          not null, primary key
#  school     :string
#  price      :decimal(, )
#  start_time :datetime
#  end_time   :datetime
#  size       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  days       :string
#  location   :string
#

class ChessClass < ActiveRecord::Base
  validates_presence_of :school, :days, :price, :location
  validates :size, numericality: { only_integer: true, less_than: 60}
  validates :price, numericality: { only_integer: true }

  has_many :class_instructors
  has_many :insturctors, through: :class_instructors
  has_many :students
end
