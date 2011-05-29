class Response < ActiveRecord::Base
  validates :supporting, :presence => true

  belongs_to :debate
end
