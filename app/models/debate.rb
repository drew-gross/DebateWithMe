class Debate < ActiveRecord::Base
  belongs_to :debate
  has_many :debates, :dependent => :destroy
end
