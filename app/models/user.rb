class User < ActiveRecord::Base
  has_many :visits
  has_many :collections
  has_many :locations, through: :visits

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid'].to_i
      user.name = auth['info']['name']
      user.username = auth['info']['nickname']
      user.image_string = auth['info']['image']
      user.location = auth['info']['location']
      user.token = auth['credentials']['token']
      user.secret = auth['credentials']['secret']
    end
  end

  def update_info(auth)
    self.provider = auth['provider']
    self.name = auth['info']['name']
    self.username = auth['info']['nickname']
    self.image_string = auth['info']['image']
    self.location = auth['info']['location']
    self.token = auth['credentials']['token']
    self.secret = auth['credentials']['secret']
    self.save!
  end
end
