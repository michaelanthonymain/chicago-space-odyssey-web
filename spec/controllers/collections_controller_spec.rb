require 'spec_helper'

describe CollectionsController do

    # context "#create" do
    # let(:user) { FactoryGirl.create(:user) }

    #   it "should randomize the image name" do
    #       name = 'imagename'
    #       post :create
    #       expect(:name).should_not eq name
    #   end

    # it "should find user by uid" do
    #     post :create, {user_id: user.uid}
    #     expect(assigns(:user)).to eq(user)
    # end

    # it "should create a new collection" do

    # end
      ## Can't test this right now because of the error 'undefined method unpack for nil:NilClass in the controller'
    # end

    context "#show" do
    let(:collection) { FactoryGirl.create(:collection) }

    it "should find collection by params id" do
        get :show, {id: collection.id}
        expect(assigns(:c)).to eq(collection)
    end

    it "renders the create view" do
        get :show, {id: collection.id}
        response.should render_template("create")
    end

    end
end