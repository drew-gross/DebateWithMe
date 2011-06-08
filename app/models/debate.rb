class Debate < ActiveRecord::Base
  validates :title, :presence => true

  has_many :supports, :dependent => :destroy
  has_many :contests, :dependent => :destroy

  def total_supports
    self.supports.count - self.contests.count
  end 
  
  def bg_color
    if self.total_supports > 0
      [0x00, 0xFF - self.total_supports * 16].max.to_s(16) + "FFFF"
    else
      "FFFF" + [0x00, 0xFF - self.total_supports.abs * 16].max.to_s(16)
    end
  end 
end
