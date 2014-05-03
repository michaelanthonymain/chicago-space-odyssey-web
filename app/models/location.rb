class Location < ActiveRecord::Base
  has_one  :system
  has_many :visits
  has_many :collections
end
