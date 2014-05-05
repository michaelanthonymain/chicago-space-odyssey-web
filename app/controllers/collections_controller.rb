class CollectionsController < ApplicationController
  # skip_before_filter :verify_authenticity_token

  def create
    # Still need to add user_id and location_id, but it works for a start
    @c = Collection.new(text:params[:text], image: params[:image])
    @c.save!
  end

  def show
    @c = []
    @c << Collection.last
    @c << Collection.find(Collection.last.id - 1)
    render :create
  end
end
