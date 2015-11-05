class Girl < ActiveRecord::Base
  belongs_to :guy
  has_many :responses
  has_many :hitchers, :through => :responses
end
