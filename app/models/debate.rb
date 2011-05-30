class Debate < ActiveRecord::Base
  validates :title, :presence => true

  has_many :supports
  has_many :contests
end
