class User < ActiveRecord::Base
  attr_accessible :email, :name
  has_many :events
  has_many :checkins
end
