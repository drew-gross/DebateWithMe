class Debate < ActiveRecord::Base
  validates :title, :presence => true

  has_many :supports, :dependent => :destroy
  has_many :contests, :dependent => :destroy

  def bgcolor
    @debate.supports.count - @debate.contests.count
  end
end
