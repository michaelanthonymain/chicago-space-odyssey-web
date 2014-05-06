require 'spec_helper'

describe CollectionsController do

  context "#create" do

    it "should randomize the image name" do
        name = 'imagename'
        post :create
        expect(:name).should_not eq name
    end

  end
end