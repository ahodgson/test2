class Location < ActiveRecord::Base
  attr_accessible :latitude, :longitude, :name, :user_id
  belongs_to :user
end
