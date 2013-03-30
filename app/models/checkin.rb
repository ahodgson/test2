class Checkin < ActiveRecord::Base
  attr_accessible :accuracy, :datetime, :event_id, :latitude, :longitude, :user_id
  belongs_to :user
  belongs_to :event
end
