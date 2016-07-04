class ChessClass < ActiveRecord::Base
  def get_day
    days = %w(Monday Tuesday Wednesday Thursday Friday Saturday Sunday)
    class_day = days[self.days]
    class_day
  end
end
