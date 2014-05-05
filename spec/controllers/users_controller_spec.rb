require 'spec_helper'

describe UsersController do
  let(:user) { FactoryGirl.create(:user) }

  context "#index" do
    it "should respond with 200 OK" do
      get :index
      expect(response.status).to eq(200)
    end
  end

  context "#show" do
    it "should respond with 200 OK" do
      get :show
      expect(response.status).to eq(200)
    end
  end

  context "#locations" do
     it "should find the user's locations" do
         get :locations, {uid: user.uid}
         expect(assigns(:locs)).to eq(user.locations)
     end

     it "should set response equal to location names" do
        get :locations, {uid: user.uid}
        location = user.locations.first
        expect(assigns(:response)).to eq( { "#{location.id}" => 'Test Location'} )
     end

     it "should render json" do
         get :locations, {uid: user.uid}
         location = user.locations.first
         response.body.should == { "#{location.id}" => 'Test Location'}.to_json
     end
  end
end