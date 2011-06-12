class Debate < ActiveRecord::Base
  belongs_to :debate
  has_many :debates, :dependent => :destroy
  
  def display_class
    if is_supporting == true
      return "supporting"
    elsif is_supporting == false
      return "refuting"
    else
      return "blank"
    end
  end

  def support_count
    count = debates.inject(0) {|child| child.support_count}
    if is_supporting == true
      return count + 1
    elsif is_supporting == false
      return count - 1
    end
    return count
  end

  def bg_color
    "FFFFFF"
  end
end
