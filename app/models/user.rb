class User < ActiveRecord::Base
  has_many :visits

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
end
