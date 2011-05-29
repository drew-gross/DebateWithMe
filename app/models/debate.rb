class Debate < ActiveRecord::Base
      validates :proposition, :presence => true

      has_many :responses
end