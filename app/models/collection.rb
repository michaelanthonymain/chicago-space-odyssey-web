class Collection < ActiveRecord::Base
  # mount_uploader :image, CacheImageUploader

  belongs_to :user
  belongs_to :location

end
