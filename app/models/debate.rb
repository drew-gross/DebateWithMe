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
    count = debates.inject(0) {|result, child| result + child.support_count}
    if is_supporting == true
      return count + 1
    elsif is_supporting == false
      return count - 1
    end
    return count
  end

  def subtree_count
    return debates.inject(0) {|result, child| result + child.subtree_count} + debates.count
  end

  def bg_color
    r = 255
    g = 255
    b = 255
    if subtree_count != 0
      if support_count > 0
        r = (subtree_count - support_count) * 255 / subtree_count
      else
        b = (subtree_count + support_count) * 255 / subtree_count
      end
    end
    "rgb(" + r.to_s + ", " + g.to_s + ", " + b.to_s + ")"
  end

  def generate_style
    ("style=\"background-color:" + bg_color + ";\"").html_safe
  end
  
  def supporting_points
    debates.find_all{|debate| debate.is_supporting == true}
  end
  
  def contesting_points
    debates.find_all{|debate| debate.is_supporting == true}
  end
end 
