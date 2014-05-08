class CollectionsController < ApplicationController
  # skip_before_filter :verify_authenticity_token

  def create
    name = SecureRandom.hex + ".png"
    unpack = params[:image].unpack("m0")
    @c = nil
    user = User.find_by(uid: params[:user_id].to_i)

    File.open('tmp/cache/' + name, "wb") do |f|
      f.write(unpack.first)
      @c = Collection.new(text: params[:text], image: f, location_id: params[:location_id].to_i, user: user)
    end

    @c.save!
  end

  def show
    @c = Collection.find(params[:id])
    render :create
  end
end
