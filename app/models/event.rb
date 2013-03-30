class Event < ActiveRecord::Base
  attr_accessible :enddatetime, :latitude, :longitude, :name, :startdatetime, :user_id
  belongs_to :user
  has_many :checkins
end
