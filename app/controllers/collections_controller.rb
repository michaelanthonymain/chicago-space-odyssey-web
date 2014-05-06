class CollectionsController < ApplicationController
  # skip_before_filter :verify_authenticity_token

  def create
    name = SecureRandom.hex + ".png"
    dir = "collections"
    unpack = params[:image].unpack("m0")
    path = File.join("public",dir, name)

    File.open(path, "wb") do |f|
      f.write(unpack.first)
    end

    user = User.find_by(uid: params[:user_id].to_i)
    @c = Collection.new(text: params[:text], image: name, location_id: params[:location_id].to_i, user: user)
    @c.save!
  end

  def show
    @c = Collection.find(params[:id])
    render :create
  end
end
