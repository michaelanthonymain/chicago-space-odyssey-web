class CollectionsController < ApplicationController
  # skip_before_filter :verify_authenticity_token

  def create

    path = "collections/uploads/#{SecureRandom.hex}.png"
    unpack = params[:image].unpack("m0")


    File.open("#{path}", "wb") do |f|
      f.write(unpack.first)
    end

    @c = Collection.new(text:params[:text], image: path)
    @c.save!
  end

  def upload

  end

  def show
    @c = Collection.find(params[:id])
    render :create
  end

  private

  def collection_params
    params.require(:collection).permit!
  end
end
