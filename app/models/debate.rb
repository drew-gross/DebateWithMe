class Debate < ActiveRecord::Base
      validates :proposition, :presence => true

      has_many :responses, :dependent => :destroy
end